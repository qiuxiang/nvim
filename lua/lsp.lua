local lspconfig = require 'lspconfig'
local configs = require 'lspconfig.configs'
configs.solidity = {
  default_config = {
    cmd = { 'solidity-ls', '--stdio' },
    -- cmd = { 'node', '/home/i/Projects/solidity-ls/dist', '--stdio' },
    filetypes = { 'solidity' },
    root_dir = lspconfig.util.find_git_ancestor,
    single_file_support = true,
  },
}
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
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require 'cmp_nvim_lsp'.update_capabilities(capabilities)
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup { capabilities = capabilities, settings = settings }
end

local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require 'luasnip'.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete({}),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'nvim_lsp_signature_help' },
    { name = 'luasnip' },
  },
}

require "flutter-tools".setup {
  lsp = { color = { enabled = true } },
}

vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {})
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', {})
