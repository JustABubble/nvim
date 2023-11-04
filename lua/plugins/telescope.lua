local config = function()
  require('telescope').setup {
    defaults = {
      mappings = {
        i = {
          ['<C-u>'] = false,
          ['<C-d>'] = false,
        },
      },
    },
  }

  -- Enable telescope fzf native, if installed
  pcall(require('telescope').load_extension, 'fzf')
end

return {
  'nvim-telescope/telescope.nvim',
  config = config,
  cmd = 'Telescope',
  keys = {
    { '<leader>?',       [[<CMD>Telescope oldfiles<CR>]], desc = '[?] Find recently opened files' },
    { '<leader><space>', [[<CMD>Telescope buffers<CR>]],  desc = '[ ] Find existing buffers' },
    {
      '<leader>/',
      function()
        -- You can pass additional configuration to telescope to change theme, layout, etc.
        require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end,
      desc = '[/] Fuzzily search in current buffer'
    },

    { '<leader>gf', [[<CMD>Telescope git_files<CR>]],   desc = 'Search [G]it [F]iles' },
    { '<leader>sf', [[<CMD>Telescope find_files<CR>]],  desc = '[S]earch [F]iles' },
    { '<leader>sh', [[<CMD>Telescope help_tags<CR>]],   desc = '[S]earch [H]elp' },
    { '<leader>sw', [[<CMD>Telescope grep_string<CR>]], desc = '[S]earch current [W]ord' },
    { '<leader>sg', [[<CMD>Telescope live_grep<CR>]],   desc = '[S]earch by [G]rep' },
    { '<leader>sd', [[<CMD>Telescope diagnostics<CR>]], desc = '[S]earch [D]iagnostics' },
    { '<leader>sr', [[<CMD>Telescope resume<CR>]],      desc = '[S]earch [R]esume' },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
}
