local lspconfig = require 'lspconfig'
local servers = {
  'html', 'cssls', 'tsserver', 'jsonls', 'tailwindcss',
  'sumneko_lua', 'solidity',
}
local settings = {
  json = {
    schemas = require('schemastore').json.schemas(),
    validate = { enable = true },
  },
  Lua = {
    diagnostics = { globals = { 'vim' } },
    workspace = { library = vim.api.nvim_get_runtime_file("", true) },
  },
}
vim.g.coq_settings = {
  auto_start = 'shut-up',
  display = {
    icons = { mode = 'none' },
    preview = { border = 'single' }
  },
}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
    settings = settings
  }))
end

require "flutter-tools".setup {
  lsp = { color = { enabled = true } },
}

vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {})
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', {})
