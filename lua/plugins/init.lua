return {
  {
    'tpope/vim-sleuth',
    event = 'BufReadPre',
  },
  {
    'tpope/vim-dispatch',
    cmd = { 'Make', 'Dispatch' },
  },
  {
    'tpope/vim-fugitive',
    cmd = 'Git',
    keys = {
      { '<leader>gs', '<CMD>Git<CR>' }
    },
  },
  {
    'rust-lang/rust.vim',
    ft = 'rust',
  },
  {
    'togglebyte/togglerust',
    ft = 'rust',
    keys = {
      { '<C-b>', '<CMD>Compile<CR>', desc = 'Compile some rust code.' }
    },
  },
  {
    'github/copilot.vim',
    cond = vim.fn.executable('node') == 1,
    event = 'BufReadPre',
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
    event = 'BufReadPre',
    dependencies = 'nvim-treesitter/nvim-treesitter',
  },
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
    event = 'BufReadPre',
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    config = true,
    event = 'BufReadPre',
  },
}
