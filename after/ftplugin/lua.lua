vim.lsp.start({
  name = "lua-ls",
  cmd = { "lua-language-server" },
  root_dir = require("lsp").find_root({
    ".luarc.json",
    ".luarc.jsonc",
    ".luacheckrc",
    ".stylua.toml",
    "stylua.toml",
    "selene.toml",
    "selene.yml",
    ".git",
  }),
  single_file_support = true,
})
