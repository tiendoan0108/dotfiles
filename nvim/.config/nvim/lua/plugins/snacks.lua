return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = true,
        preset = {
          header = [[
  ██╗    ██╗██╗  
 ██╔╝   ██╔╝╚██╗ 
██╔╝   ██╔╝  ╚██╗
╚██╗  ██╔╝   ██╔╝
 ╚██╗██╔╝   ██╔╝ 
  ╚═╝╚═╝    ╚═╝  
        ]],
        },
      },
      explorer = {
        enabled = true,
      },
      picker = {
        sources = {
          explorer = {
            hidden = true, -- hiện file ẩn (dotfiles)
            ignored = true, -- hiện cả file trong .gitignore
            exclude = { ".DS_Store" },
          },
          files = {
            hidden = true, -- hiện file ẩn (dotfiles)
            include = { ".env" },
            exclude = { ".DS_Store" },
          },
          grep = {
            hidden = true, -- hiện file ẩn (dotfiles)
            exclude = { "node_modules", "dist", ".git", ".DS_Store" },
            include = { ".env" },
          },
        },
        win = {
          input = {
            keys = {
              ["<C-h>"] = { "toggle_hidden", mode = { "i", "n" } },
            },
          },
          list = {
            keys = {
              ["<C-h>"] = "toggle_hidden",
            },
          },
        },
      },
    },
  },
}
