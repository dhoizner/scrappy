local utils = {}

function utils.split(inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  local t = {}
  for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
    table.insert(t, str)
  end
  return t
end

function utils.strip_ansi_colors(str)
  return str:gsub("\27%[%d*;*%d*m", "")
end

function utils.strip_quotes(str)
  return str:gsub('"', '')
end

function utils.append_quotes(str)
  return '"' .. str .. '"'
end

function utils.get_extension(str)
  return str:match('.+%.(%w+)$')
end

function utils.get_filename(str)
  if not str then return "" end
  return str:gsub("%.%w+$", "")
end

function utils.match_extension(str, ext)
  return str:match('.+' .. ext .. '$')
end

-- https://github.com/s-walrus/hex2color/blob/master/hex2color.lua
function utils.hex(hex, value)
  return {
    tonumber(string.sub(hex, 2, 3), 16) / 256,
    tonumber(string.sub(hex, 4, 5), 16) / 256,
    tonumber(string.sub(hex, 6, 7), 16) / 256,
    value or 1 }
end

return utils
