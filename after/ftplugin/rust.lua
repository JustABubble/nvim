vim.cmd('compiler cargo')

vim.keymap.set('n', '<C-b>', '<CMD>Make check<CR>', { desc = 'Compile some Rust code.'})
