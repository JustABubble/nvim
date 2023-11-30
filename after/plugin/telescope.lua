vim.keymap.set('n', '<leader>?',       [[<CMD>Telescope oldfiles<CR>]], { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', [[<CMD>Telescope buffers<CR>]],  { desc = '[ ] Find existing buffers' })
vim.keymap.set(
  'n',
  '<leader>/',
  function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end,
  { desc = '[/] Fuzzily search in current buffer' }
)
vim.keymap.set('n', '<leader>gf', [[<CMD>Telescope git_files<CR>]],   { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', [[<CMD>Telescope find_files<CR>]],  { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', [[<CMD>Telescope help_tags<CR>]],   { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', [[<CMD>Telescope grep_string<CR>]], { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', [[<CMD>Telescope live_grep<CR>]],   { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', [[<CMD>Telescope diagnostics<CR>]], { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', [[<CMD>Telescope resume<CR>]],      { desc = '[S]earch [R]esume' })
