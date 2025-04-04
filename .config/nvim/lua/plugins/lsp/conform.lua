local options = {
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
  lsp_fallback = true,
  formatters_by_ft = {
    lua = { 'stylua' },
    javascript = { 'prettier' },
    typescript = { 'prettier' },
    html = { 'prettier' },
    css = { 'prettier' },
    json = { 'prettier' },
    markdown = { 'prettier' },
    python = { 'black' },
  },
}
require('conform').setup(options)
