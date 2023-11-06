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
    on_highlights = function(hl, c)
      hl.DiagnosticVirtualTextError = { bg = c.none, fg = c.error }
      hl.DiagnosticVirtualTextWarn = { bg = c.none, fg = c.warning }
      hl.DiagnosticVirtualTextInfo = { bg = c.none, fg = c.info }
      hl.DiagnosticVirtualTextHint = { bg = c.none, fg = c.hint }
      hl.DiagnosticVirtualTextUnnecessary = { bg = c.none, fg = c.terminal_black }

      hl.TreesitterContext = { bg = c.none }
    end
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
