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
    config = function()
      require("catppuccin").setup({
        transparent_background = true, -- xóa nền cho Normal/NormalNC (toàn bộ editor)
        float = {
          transparent = true, -- floating window (Lazy, Mason, LspInfo...) cũng trong suốt
          solid = true, -- border của float dùng màu solid thay vì cũng trong suốt luôn (tránh rối mắt)
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-nvim",
    },
  },
}
