vim.cmd.compiler("cargo")

vim.keymap.set("n", "<C-b>", [[<CMD>Make check<CR>]], { desc = "Compile some Rust code." })

vim.lsp.start({
    name = "rust-analyzer",
    cmd = { "rust-analyzer" },
    root_dir = require("lsp").find_root({ "Cargo.toml" }),
})
