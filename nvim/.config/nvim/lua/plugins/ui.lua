return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm",
      transparent = true, -- bật transparent background
      styles = {
        sidebars = "transparent", -- explorer, terminal... cũng trong suốt
        floats = "transparent", -- popup/float windows cũng trong suốt
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
