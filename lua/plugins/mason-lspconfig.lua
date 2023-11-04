local opts = {
  ensure_installed = require('util').lsp_servers,
  automatic_installation = true,
}

return {
  'williamboman/mason-lspconfig.nvim',
  opts = opts,
  event = 'BufReadPre',
  dependencies = 'williamboman/mason.nvim',
}
