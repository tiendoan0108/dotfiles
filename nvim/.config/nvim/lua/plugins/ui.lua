return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
      explorer = { enabled = false },
    },
  },
  {
    "stevearc/oil.nvim",
    opts = {
      default_file_explorer = true,

      view_options = {
        show_hidden = true,
      },
    },
    keys = {
      {
        "<leader>e",
        "<cmd>Oil<cr>",
        desc = "File Explorer",
      },
    },
  },
}
