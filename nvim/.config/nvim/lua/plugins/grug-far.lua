return {
  "MagicDuck/grug-far.nvim",
  cmd = "GrugFar",
  config = function()
    require("grug-far").setup({
      engines = {
        ripgrep = {
          -- -B = before, -A = after, -C = cả 2 phía (giống Zed)
          extraArgs = "-C 2",
        },
      },
    })
  end,
}
