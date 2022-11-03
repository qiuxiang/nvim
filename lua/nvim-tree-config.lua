require 'nvim-tree'.setup {
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = 'h',
      info = 'i',
      warning = 'w',
      error = 'e',
    },
  },
  view = { width = 40, hide_root_folder = true },
  renderer = {
    highlight_git = true,
    icons = {
      show = { file = true, folder = true, folder_arrow = false, git = false },
      symlink_arrow = ' -> ',
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
  filesystem_watchers = { enable = false },
}
