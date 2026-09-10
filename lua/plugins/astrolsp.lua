---@type LazySpec
return {
  "AstroNvim/astrolsp",
  opts = {
    features = {
      semantic_tokens = false,
    },
    formatting = {
      format_on_save = { enabled = false },
    },
    config = {
      tsc = {
        cmd = { "tsc", "--lsp", "--stdio" },
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        root_markers = { "tsconfig.json", "package.json" },
      },
    },
  },
}

