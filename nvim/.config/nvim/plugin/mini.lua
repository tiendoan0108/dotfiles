require('lazyload').on_vim_enter(function()
  vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim", version = 'stable' }
  })

  -- Basic vim opts
  require('mini.basics').setup()

  -- For auto pairs ()[]
  require('mini.pairs').setup()

  -- Use mini icons
  require('mini.icons').setup({ use_icons = vim.g.have_nerd_font })

  -- mini.statusline
  require('mini.statusline').setup()

  -- For surround text using "sa" "motion" "bracket"
  require('mini.surround').setup()

  require('mini.ai').setup()
end)
