require("globals")
local font = love.graphics.newFont("assets/monogram.ttf", 30)
love.graphics.setDefaultFilter("nearest", "nearest")
love.graphics.setFont(font)

local skyscraper = require("lib.skyscraper")
local splash = require("lib.splash")
local loading = require("lib.loading")
local ui = require("lib.ui")
local input = require("helpers.input")
local config = require("helpers.config")
local muos = require("helpers.muos")

local skyscraper_binary = "bin/Skyscraper.aarch64"
local user_config = config.new("user", "config.ini")
local skyscraper_config = config.new("skyscraper", "skyscraper_config.ini")
local templates = {}
local current_template = 0

local ui_padding = 10
local canvas = love.graphics.newCanvas(640, 480)
local background, overlay
local default_cover_path = "sample/media/covers/fake-rom.png"
local cover_preview_path = default_cover_path
local cover_preview

local w_width, w_height = love.window.getMode()
local spinner = loading.new("spinner", 1)

local state = {
  data = {
    title = "N/A",
    platform = "N/A",
  },
  error = "",
  loading = nil,
  scraping = false,
  total = 0,
  current = 0,
}

local function load_image(filename)
  local file_data = nativefs.newFileData(filename)
  if file_data then
    local image_data = love.image.newImageData(file_data)
    if image_data then
      return love.graphics.newImage(image_data)
    end
  end
end

local function update_preview(direction)
  cover_preview_path = default_cover_path
  local direction = direction or 1
  current_template = current_template + direction
  if current_template < 1 then
    current_template = #templates
  end
  if current_template > #templates then
    current_template = 1
  end
  local sample_artwork = WORK_DIR .. "/templates/" .. templates[current_template] .. ".xml"
  skyscraper.change_artwork(sample_artwork)
  skyscraper.update_sample(sample_artwork)
  state.loading = true
  state.reload_preview = true
end

local function get_templates()
  local items = nativefs.getDirectoryItems(WORK_DIR .. "/templates")
  if not items then
    return
  end
  current_template = 1
  for i = 1, #items do
    local file = items[i]
    if file:sub(-4) == ".xml" then
      table.insert(templates, file:sub(1, -5))
    end
  end
end

local function render_to_canvas()
  -- print("Rendering canvas")
  cover_preview = load_image(cover_preview_path)
  canvas:renderTo(function()
    love.graphics.clear()
    if cover_preview then
      love.graphics.draw(cover_preview, 0, 0, 0)
    end
  end)
end

local function setup_configs()
  local rom_path = muos.SD1_PATH
  if user_config:load() then
    skyscraper_binary = user_config:read("main", "binary") or skyscraper_binary
    if user_config:read("main", "sd") == 2 then rom_path = muos.SD2_PATH end
  else
    local loaded = user_config:create_from("config.ini.example")
    if loaded then
      user_config:insert("main", "binary", skyscraper_binary)
      user_config:detect_sd()
      user_config:load_platforms()
      user_config:save()
    end
  end

  if not skyscraper_config:load() then
    local loaded = skyscraper_config:create_from("skyscraper_config.ini.example")
    if loaded then
      print("Config file not present, creating one")
      skyscraper_config:insert("main", "inputFolder", string.format("\"%s\"", rom_path))
      skyscraper_config:insert("main", "cacheFolder", string.format("\"%s/%s\"", WORK_DIR, "data/cache"))
      skyscraper_config:insert("main", "gameListFolder", string.format("\"%s/%s\"", WORK_DIR, "data/output"))
      skyscraper_config:insert("main", "artworkXml", string.format("\"%s/%s\"", WORK_DIR, "templates/box2d.xml"))
      skyscraper_config:save()
    end
  end
end

function love.load()
  splash.load()
  setup_configs()
  input.load()
  spinner:load()
  get_templates()
  background = load_image("assets/muxsysinfo.png")
  overlay = load_image("assets/preview.png")
  render_to_canvas()
  skyscraper.init("skyscraper_config.ini", skyscraper_binary)

  local debug = user_config:read("main", "debug")
  if not debug or debug == 0 then
    function _G.print() end
  end
end

local function update_state()
  local t = OUTPUT_CHANNEL:pop()
  if t then
    if t.error ~= "" then
      state.error = t.error
    end
    if t.data ~= nil and next(t.data) ~= nil then
      state.data = t.data
      if state.data.title ~= nil and state.data.title ~= "fake-rom" then
        cover_preview_path = string.format("data/output/%s/media/covers/%s.png", state.data.platform, state.data
          .title)
        state.reload_preview = true
      end
    end
    if t.loading ~= nil then
      state.loading = t.loading
    end
  end
end

local function scrape_platforms()
  print("Scraping platforms")
  -- Load platforms from config
  local platforms = user_config:get().platforms
  local rom_path, _ = user_config:get_paths()
  print("ROM path: " .. rom_path)
  state.scraping = true
  -- For each source = destionation pair in config, fetch and update artwork
  for src, dest in pairs(platforms) do
    local platform_path = string.format("%s/%s", rom_path, src)
    -- Get list of roms
    local roms = nativefs.getDirectoryItems(platform_path)
    for i = 1, #roms do
      local file = roms[i]
      -- Fetch and update artwork
      skyscraper.fetch_and_update_artwork(
        platform_path,
        string.format(platform_path .. "/" .. file, dest, file),
        dest,
        templates[current_template]
      )
    end
  end
end

local function copy_artwork()
  -- Get list of scraped artwork
  local scraped_art = nativefs.getDirectoryItems("data/output")
  if not scraped_art then
    return
  end
  local _, catalogue_path = user_config:get_paths()
  -- Iterate over folders in output
  for i = 1, #scraped_art do
    local item = scraped_art[i]
    -- Check if item is a folder
    local item_info = nativefs.getInfo(string.format("data/output/%s", item))
    if item_info and item_info.type == "directory" then
      -- Get designated MUOS platform
      local destination_folder = muos.platforms[item]
      if destination_folder then
        -- Destination folder should be in info/catalogue/{System}/box
        destination_folder = string.format("%s/%s/box", catalogue_path, destination_folder)
        -- Get list of artwork
        local artwork = nativefs.getDirectoryItems(string.format("data/output/%s/media/covers", item))
        for j = 1, #artwork do
          local file = nativefs.read(string.format("data/output/%s/media/covers/%s", item, artwork[j]))
          if file then
            -- Write to destination
            nativefs.write(string.format("%s/%s", destination_folder, artwork[j]), file)
          end
        end
      end
    end
  end
end

local function on_artwork_change(key)
  if key == "left" then
    update_preview(-1)
  elseif key == "right" then
    update_preview(1)
  end
end

local function on_refresh_press()
  user_config:load_platforms()
  user_config:save()
end

function love.update(dt)
  splash.update(dt)
  input.update(dt)
  spinner:update(dt)
  input.onEvent(ui.keypressed)
  update_state()

  -- Left side
  ui.element("icon_label", { w_width / 2 + ui_padding * 2, ui_padding }, "Artwork", "folder_image")
  ui.element("select",
    { w_width / 2 + ui_padding * 2, ui_padding + 20, w_width / 2 - ui_padding * 3, 30 },
    on_artwork_change,
    templates,
    current_template
  )
  ui.element("icon_label", { w_width / 2 + ui_padding * 2, ui_padding * 4 + 50 }, "Platform: " .. state.data.platform,
    "controller")
  ui.element("icon_label", { w_width / 2 + ui_padding * 2, ui_padding * 4 + 70 }, "Game: " .. state.data.title, "cd")
  ui.element("icon_label", { w_width / 2 + ui_padding * 2, ui_padding * 6 + 90 },
    string.format("Progress: %d / %d", state.current, state.total),
    "info")
  ui.element("progress_bar", { w_width / 2 + ui_padding * 2, ui_padding * 6 + 110, w_width / 2 - ui_padding * 3, 20 },
    state.current / state.total)
  ui.element("button",
    { w_width / 2 + ui_padding * 2, ui_padding * 6 + 130, w_width / 2 - ui_padding * 3, 30 },
    on_refresh_press,
    "Refresh platforms",
    "redo"
  )

  ui.element("button",
    { w_width / 2 + ui_padding * 2, ui_padding * 6 + 170, w_width / 2 - ui_padding * 3, 30 },
    scrape_platforms,
    "Start scraping",
    "play"
  )

  -- Right side
  ui.element("icon_label", { ui_padding, 10 }, "Preview", "file_image")

  if state.scraping then
    local input_count = INPUT_CHANNEL:getCount()

    if input_count > state.total then
      state.total = input_count
    else
      state.current = state.total - input_count
    end
    if input_count == 0 then
      state.scraping = false
      copy_artwork()
    end
  end

  if state.reload_preview and not state.loading then
    print("Reloading preview")
    state.reload_preview = false
    render_to_canvas()
  end
end

local function draw_preview(x, y, scale, show_overlay)
  show_overlay = show_overlay or false
  scale = scale or 0.5
  love.graphics.push()
  love.graphics.translate(x, y)
  love.graphics.scale(scale)
  if show_overlay and background then
    love.graphics.draw(background, 0, 0, 0)
  end
  love.graphics.draw(canvas, 0, 0, 0);
  if show_overlay and overlay then
    love.graphics.draw(overlay, 0, 0, 0)
  end
  love.graphics.setColor(1, 1, 1, 0.5);
  love.graphics.rectangle("line", 0, 0, w_width, w_height)
  if state.loading then
    love.graphics.push()
    love.graphics.setColor(0, 0, 0, 0.5);
    love.graphics.rectangle("fill", 0, 0, w_width, w_height)
    spinner:draw(w_width / 2, w_height / 2)
    love.graphics.pop()
  end
  love.graphics.setColor(1, 1, 1);
  love.graphics.pop()
end

local function main_draw()
  draw_preview(ui_padding, 30, 0.5, true)
  if state.error ~= "" then
    love.graphics.print("ERROR: " .. state.error, 10, 40)
  end
end

function love.draw()
  love.graphics.setBackgroundColor(0, 0, 0, 1)
  splash.draw()

  if splash.finished then
    main_draw()
    ui.draw()
  end
end
