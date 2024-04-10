vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', 'l', api.node.open.edit, opts('Open'))
  vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
  vim.keymap.set('n', 't', api.node.open.tab, opts('Open: New Tab'))
  vim.keymap.set('n', 'g.', api.tree.toggle_hidden_filter, opts('Toggle Filter: Dotfiles'))
end

require 'nvim-tree'.setup {
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = '!',
      info = '!',
      warning = '!',
      error = '!',
    },
  },
  filters = {
    dotfiles = true,
  },
  view = {
    width = 40,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = { folder_arrow = false },
      glyphs = {
        default = ' ',
        symlink = ' ',
        folder = {
          default = '+',
          open = '-',
          empty = '+',
          empty_open = '-',
          symlink = '+',
          symlink_open = '-',
        },
      },
    },
  },
  on_attach = on_attach,
}
