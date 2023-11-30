local M = {}

M.find_root = function(patterns)
  -- Use the current working directory as a fallback.
  local cwd = vim.fn.getcwd()

  -- Search for files that match the given `patterns`.
  local matches = vim.fs.find(patterns, { upward = true })

  if vim.tbl_isempty(matches) then
    -- Could not find any root files.
    return cwd
  end

  -- Get the parent directory of the first match.
  local root_dir = vim.fs.dirname(matches[1])

  if root_dir == nil then
    -- If it doesn't have a parent directory, return the cwd
    return cwd
  end

  return root_dir
end

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local nmap = function(lhs, rhs)
      return vim.keymap.set("n", lhs, rhs, { buffer = event.buf })
    end

    nmap("<leader>rn", vim.lsp.buf.rename)
    nmap("<leader>ca", vim.lsp.buf.code_action)

    nmap("gd", vim.lsp.buf.definition)
    nmap("gr", require("telescope.builtin").lsp_references)
    nmap('gI', require('telescope.builtin').lsp_implementations)
    nmap('<leader>D', vim.lsp.buf.type_definition)
    nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols)
    nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols)

    -- See `:help K` for why this keymap
    nmap('K', vim.lsp.buf.hover)
    nmap('<C-k>', vim.lsp.buf.signature_help)

    -- Lesser used LSP functionality
    nmap('gD', vim.lsp.buf.declaration)
    nmap('<leader>wa', vim.lsp.buf.add_workspace_folder)
    nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder)
    nmap('<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end)

    nmap('<leader>f', function() vim.lsp.buf.format({ async = true }) end)
  end
})

return M
