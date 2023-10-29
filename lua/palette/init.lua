local config = require("palette.config")
local colorscheme = require("palette.colorcheme")

local Palette = {}

Palette.setup = function(options)
  config.setup(options)
  vim.print(config.values)
end

Palette.get_special_color = function(hl_group, hl_type)
  return colorscheme.get_special_color(hl_group, hl_type)
end

Palette.get_terminal_color = function(index)
  return colorscheme.get_terminal_color(index)
end

Palette.get_all_colors = function()
  return colorscheme.get_all_colors(config.values.special_colors)
end

return Palette
