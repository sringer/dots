local nvim_lsp = require('lspconfig')

return {
  default_config = {
    cmd = { 'golangci-lint-langserver' },
    root_dir = nvim_lsp.util.root_pattern('.git', 'go.mod'),
    filetypes = { 'go' },
    init_options = {
      command = { 'golangci-lint', 'run', '--fast', '--out-format', 'json' },
    },
  },
}
