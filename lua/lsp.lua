local lspconfig = require 'lspconfig'
local servers = {
  'html', 'cssls', 'tsserver', 'jsonls', 'lua_ls'
  -- 'sourcekit', 'gopls'
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
if cmp ~= nil then
  cmp.setup {
    snippet = {
      expand = function(args)
        require 'luasnip'.lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<cr>'] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      },
      ['<a-space>'] = cmp.mapping.complete(),
    }),
    sources = {
      { name = 'buffer' },
      { name = 'path' },
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = "codeium", priority = 1000 },
    },
  }
end

require "flutter-tools".setup {
  lsp = { color = { enabled = true } },
}

vim.keymap.set('n', '[g', vim.diagnostic.goto_prev, {})
vim.keymap.set('n', ']g', vim.diagnostic.goto_next, {})

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>a', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<leader>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
