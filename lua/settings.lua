-- Set `<leader>` key to `<Space>`
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enables 24-bit RGB color in the TUI.
vim.opt.termguicolors = true

-- Disable status bar.
vim.opt.laststatus = 0

-- Disable highlight on search.
vim.opt.hlsearch = false

-- Blocky cursor.
vim.opt.guicursor = ""

-- Line numbers.
vim.opt.number = true
vim.opt.relativenumber = true

-- Default tab style.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indent when starting a new-line (hopefully where appropriate).
vim.opt.smartindent = true

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = "unnamedplus"

-- Disable wrapping.
vim.opt.wrap = false

-- Intuitive window splitting.
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Case-insensitive searching UNLESS \C or capital in search.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn off by default.
vim.wo.signcolumn = 'no'

-- Set colorcolumn.
vim.wo.colorcolumn = '80'

-- Set completeopt to have a better completion experience.
vim.o.completeopt = 'menuone,noselect'

-- Make netrw look better.
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Disable continuing comments on new line.
vim.api.nvim_create_autocmd('FileType', {
  command = [[setlocal formatoptions-=c formatoptions-=r formatoptions-=o]],
  pattern = '*',
})

-- Highlight on yank.
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
