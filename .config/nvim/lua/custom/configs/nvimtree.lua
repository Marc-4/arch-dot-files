require("nvim-tree").setup({
  filters = {
    dotfiles = false,        -- show hidden (dot) files
    git_ignored = false,     -- show gitignored files
  },
  git = {
    enable = true,
    ignore = false,          -- do not hide gitignored files
  },
})

