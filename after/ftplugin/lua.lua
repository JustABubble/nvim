vim.lsp.start({
    name = "lua-ls",
    cmd = { "lua-language-server" },
    root_dir = require("lsp").find_root({}),
})
