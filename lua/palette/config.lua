local config = {}

local defaults = {
  auto_generate = false,
  special_colors = {
    foreground = {
      hl_group = "Normal", hl_type = "foreground",
    },
    background = {
      hl_group = "Normal", hl_type = "background",
    },
    cursor = {
      hl_group = "Cursor", hl_type = "background",
    },
  },
  output_files = {
    xresources = {
      enabled = false,
      path = "",
    },
    kitty = {
      enabled = false,
      path = "",
    },
  },
}

config.setup = function(options)
  config.values = vim.tbl_deep_extend("force", defaults, options or {})
end

config.setup()

return config
