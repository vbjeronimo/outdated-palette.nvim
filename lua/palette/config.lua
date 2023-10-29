local config = {}

local defaults = {
  auto_generate = false,
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
