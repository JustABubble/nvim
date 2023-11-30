vim.keymap.set("n", "<C-b>", [[<CMD>Dispatch cmake --build build<CR>]])

require("lsp.clangd").start()
