vim.lsp.start({
  name = "taplo",
  cmd = { "taplo", "lsp", "stdio" },
  root_dir = require("lsp").find_root({
    "*.toml",
    ".git",
  }),
  single_file_support = true,
})
