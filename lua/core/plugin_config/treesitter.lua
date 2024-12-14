require'nvim-treesitter.configs'.setup {
  ensure_installed = { "rust", "c", "cpp", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "java" },
  highlight = {
    enable = true,
  },
}
