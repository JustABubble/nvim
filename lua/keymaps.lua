-- Prevent cancelled `<leader>` maps from moving the cursor
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Keep cursor in the middle of the screen when scrolling
vim.keymap.set('n', 'n', 'nzzzv', { silent = true })
vim.keymap.set('n', 'N', 'Nzzzv', { silent = true })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { silent = true })

-- File browsing
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Quickfix list
vim.keymap.set('n', '<leader>co', '<CMD>copen<CR>', { desc = 'Open quickfix list' })
vim.keymap.set('n', '<leader>cc', '<CMD>cclose<CR>', { desc = 'Close quickfix list' })
vim.keymap.set('n', '[c', '<CMD>cp<CR>', { desc = 'Goto previous quickfix item' })
vim.keymap.set('n', ']c', '<CMD>cn<CR>', { desc = 'Goto next quickfix item' })
