return {
  'ThePrimeagen/harpoon',
  keys = {
    { '<leader>a', [[<CMD>lua require('harpoon.mark').add_file()<CR>]] },
    { '<C-e>',     [[<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>]] },
    { '<C-j>',     [[<CMD>lua require('harpoon.ui').nav_file(1)<CR>]] },
    { '<C-k>',     [[<CMD>lua require('harpoon.ui').nav_file(2)<CR>]] },
    { '<C-l>',     [[<CMD>lua require('harpoon.ui').nav_file(3)<CR>]] },
    { '<C-;>',     [[<CMD>lua require('harpoon.ui').nav_file(4)<CR>]] },
  },
  dependencies = 'nvim-lua/plenary.nvim',
}
