require('lazyload').on_vim_enter(function()
  vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim", version = 'stable' }
  })

  -- Basic vim opts
  require('mini.basics').setup({
    -- Options. Set field to `false` to disable.
    options = {
      -- Basic options ('number', 'ignorecase', and many more)
      basic = true,

      -- Extra UI features ('winblend', 'listchars', 'pumheight', ...)
      extra_ui = true,

      -- Presets for window borders ('single', 'double', ...)
      -- Default 'auto' infers from 'winborder' option
      win_borders = 'auto',
    },

    -- Mappings. Set field to `false` to disable.
    mappings = {
      -- Basic mappings (better 'jk', save with Ctrl+S, ...)
      basic = true,

      -- Prefix for mappings that toggle common options ('wrap', 'spell', ...).
      -- Supply empty string to not create these mappings.
      option_toggle_prefix = [[\]],

      -- Window navigation with <C-hjkl>, resize with <C-arrow>
      windows = true,

      -- Move cursor in Insert, Command, and Terminal mode with <M-hjkl>
      move_with_alt = false,
    },

    -- Autocommands. Set field to `false` to disable
    autocommands = {
      -- Basic autocommands (highlight on yank, start Insert in terminal, ...)
      basic = true,

      -- Set 'relativenumber' only in linewise and blockwise Visual mode
      relnum_in_visual_mode = false,
    },

    -- Whether to disable showing non-error feedback
    silent = false,
  })

  -- For auto pairs ()[]
  require('mini.pairs').setup()

  -- Use mini icons
  require('mini.icons').setup({ use_icons = vim.g.have_nerd_font })

  if vim.g.have_nerd_font then
    require("mini.icons").setup()
    MiniIcons.mock_nvim_web_devicons()
  end

  -- mini.statusline
  require('mini.statusline').setup({ use_icons = vim.g.have_nerd_font })

  -- For surround text using "sa" "motion" "bracket"
  require('mini.surround').setup()

  require('mini.ai').setup({
    -- NOTE: Avoid conflicts with the built-in incremental selection mappings on Neovim>=0.12 (see `:help treesitter-incremental-selection`)
    mappings = {
      around_next = 'aa',
      inside_next = 'ii',
    },
    n_lines = 500,
  })
end)
