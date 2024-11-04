local component = require 'lib.gui.badr'
local icon = require 'lib.gui.icon'
local utils = require 'helpers.utils'

return function(props)
  local font = props.font or love.graphics.getFont()
  local padding = {
    horizontal = (props.leftPadding or 4) + (props.rightPadding or 4),
    vertical = (props.topPadding or 4) + (props.bottomPadding or 4)
  }
  local options = props.options or {}
  local currentIndex = props.startIndex or 1

  -- Calculate width and height based on the longest option text
  local maxTextWidth = 0
  for _, option in ipairs(options) do
    maxTextWidth = math.max(maxTextWidth, font:getWidth(option))
  end

  local iconSize = 16 -- Define the size of the icons
  local width = math.max(props.width or 0, maxTextWidth + padding.horizontal + 2 * iconSize)
  local height = math.max(props.height or 0, font:getHeight() + padding.vertical)

  return component {
    options = options,
    currentIndex = currentIndex,
    x = props.x or 0,
    y = props.y or 0,
    width = width,
    height = height,
    font = font,
    focusable = props.focusable or true,
    -- styles
    backgroundColor = props.backgroundColor or utils.hex '#2d3436',
    hoverColor = props.hoverColor or utils.hex '#636e72',
    textColor = props.textColor or utils.hex '#dfe6e9',
    leftPadding = props.leftPadding or 4,
    rightPadding = props.rightPadding or 4,
    topPadding = props.topPadding or 4,
    bottomPadding = props.bottomPadding or 4,
    -- logic
    onKeyPress = function(self, key)
      if key == "left" then
        self.currentIndex = self.currentIndex > 1 and self.currentIndex - 1 or #self.options
        if props.onChange then props.onChange(key) end
      elseif key == "right" then
        self.currentIndex = self.currentIndex < #self.options and self.currentIndex + 1 or 1
        if props.onChange then props.onChange(key) end
      end
    end,
    draw = function(self)
      if not self.visible then return end
      love.graphics.push()
      love.graphics.setFont(font)

      -- Set color based on focus
      if self.focused then
        love.graphics.setColor(self.hoverColor)
      else
        love.graphics.setColor(self.backgroundColor)
      end

      -- Draw background rectangle
      love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)

      -- Draw chevron icons using the icon component
      local leftIcon = icon {
        name = "chevron_left",
        x = self.x + self.leftPadding,
        y = self.y + (self.height - iconSize) / 2,
        size = iconSize
      }
      local rightIcon = icon {
        name = "chevron_right",
        x = self.x + self.width - iconSize - self.rightPadding,
        y = self.y + (self.height - iconSize) / 2,
        size = iconSize
      }

      leftIcon:draw()  -- Draw the left chevron
      rightIcon:draw() -- Draw the right chevron

      -- Draw the current option text, centered between the icons
      local currentOption = self.options[self.currentIndex] or ""
      local textX = self.x + iconSize + self.leftPadding
      local textY = self.y + self.height / 2 - font:getHeight() / 2

      love.graphics.setColor(self.textColor)
      love.graphics.printf(currentOption, textX, textY, self.width - 2 * (iconSize + self.leftPadding), 'center')

      love.graphics.pop()
    end
  }
end
