vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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
    mappings = {
      list = {
        { key = "l", action = "edit" },
      },
    },
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
        git = {
          unmerged = "═",
          deleted = "",
        },
      },
    },
  },
  filesystem_watchers = { enable = false },
}
