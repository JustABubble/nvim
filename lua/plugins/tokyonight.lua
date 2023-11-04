local opts = function()
  return {
    style = 'night',
    transparent = true,
    terminal_colors = true,
    styles = {
      comments = { italic = false },
      keywords = { italic = false },
      sidebars = 'transparent',
      floats = 'transparent',
    },
  }
end

return {
  'folke/tokyonight.nvim',
  enabled = true,
  priority = 1000,
  lazy = false,
  opts = opts,
  config = function(_, opts)
    local tokyonight = require('tokyonight')
    tokyonight.setup(opts)
    tokyonight.load()
  end,
}
