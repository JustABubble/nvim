local M = {}

M.start = function()
  vim.lsp.start({
    name = "clangd",
    cmd = { "clangd" },
    root_dir = require("lsp").find_root({
      ".clangd",
      ".clang-tidy",
      ".clang-format",
      "compile_commands.json",
      "compile_flags.txt",
      "configure.ac",
      ".git",
    }),
    single_file_support = true,
  })
end

return M
