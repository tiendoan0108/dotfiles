return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato",
      transparent_background = true,
      float = {
        transparent = true,
        solid = true,
      },
      integrations = {
        snacks = {
          enabled = true,
        },
      },
    })
  end,
}
