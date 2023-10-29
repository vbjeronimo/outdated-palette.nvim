local colorscheme = {}

colorscheme.get_special_color = function(hl_group, hl_type)
  vim.print(hl_group, hl_type)
  local color_pair = vim.api.nvim_get_hl_by_name(hl_group, true)
  return string.upper(string.format("#%06x", color_pair[hl_type]))
end

colorscheme.get_terminal_color = function(index)
  return vim.g["terminal_color_"..index]
end

colorscheme.get_all_colors = function(special_colors)
  local colors = {
    special_colors = {},
    terminal_colors = {},
  }

  for name, color in pairs(special_colors) do
    colors.special_colors[name] = colorscheme.get_special_color(color.hl_group, color.hl_type)
  end

  for i = 0, 15 do
    colors.terminal_colors["color"..i] = colorscheme.get_terminal_color(i)
  end

  return colors
end

return colorscheme
