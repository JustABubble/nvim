vim.lsp.start({
  name = "zls",
  cmd = { "zls" },
  root_dir = require("lsp").find_root({
    "zls.json",
    "build.zig",
    ".git",
  }),
  single_file_support = true,
})
