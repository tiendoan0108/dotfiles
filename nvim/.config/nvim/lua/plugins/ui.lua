return {
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     style = "storm",
  --     transparent = true, -- bật transparent background
  --     styles = {
  --       sidebars = "transparent", -- explorer, terminal... cũng trong suốt
  --       floats = "transparent", -- popup/float windows cũng trong suốt
  --     },
  --   },
  -- },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "macchiato",
      -- transparent_background = true,
      -- float = {
      --   transparent = true,
      --   solid = true,
      -- },
      integrations = {
        neotree = true, -- quan trọng: bật integration cho neo-tree
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-nvim",
    },
  },
}
