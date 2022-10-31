local lspconfig = require 'lspconfig'
local servers = {
  'html', 'cssls', 'tsserver', 'jsonls',
  -- 'tailwindcss', 'sourcekit', 'gopls', 'sumneko_lua',
}
local settings = {
  json = {
    schemas = require('schemastore').json.schemas(),
    validate = { enable = true },
  },
  Lua = {
    diagnostics = { globals = { 'vim' } },
    workspace = { library = vim.api.nvim_get_runtime_file('', true) },
  },
}
local capabilities = require 'cmp_nvim_lsp'.default_capabilities()
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
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  }),
  sources = {
    { name = 'buffer' },
    { name = 'path' },
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

require "flutter-tools".setup {
  lsp = { color = { enabled = true } },
}

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, {})
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, {})
