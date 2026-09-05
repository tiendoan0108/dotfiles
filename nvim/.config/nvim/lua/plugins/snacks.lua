return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
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
            exclude = { "node_modules/", ".git/", "dist/" },
          },
        },
      },
    },
  },
}
