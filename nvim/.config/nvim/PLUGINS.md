# LazyVim plugin list

Generated from `lazy-lock.json` and `lua/plugins/` on 2026-09-04.

- Distro: [LazyVim](https://github.com/LazyVim/LazyVim) (`c10948c`)
- Extras: none (`lazyvim.json`)
- Plugin manager: [lazy.nvim](https://github.com/folke/lazy.nvim)
- Total in lockfile: **33**
- Disabled in this config: **2** (`noice.nvim`, `dashboard-nvim`)

---

## Core

| Plugin | Repo | Role |
| --- | --- | --- |
| LazyVim | [LazyVim/LazyVim](https://github.com/LazyVim/LazyVim) | Distro / defaults |
| lazy.nvim | [folke/lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| plenary.nvim | [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Lua utilities (dependency) |
| persistence.nvim | [folke/persistence.nvim](https://github.com/folke/persistence.nvim) | Session restore |
| which-key.nvim | [folke/which-key.nvim](https://github.com/folke/which-key.nvim) | Keymap popup |

## UI

| Plugin | Repo | Role |
| --- | --- | --- |
| snacks.nvim | [folke/snacks.nvim](https://github.com/folke/snacks.nvim) | Picker, notifier, explorer, dashboard, etc. Dashboard **disabled** in `lua/plugins/ui.lua` |
| bufferline.nvim | [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer tabs |
| lualine.nvim | [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline |
| mini.icons | [nvim-mini/mini.icons](https://github.com/nvim-mini/mini.icons) | Icons |
| tokyonight.nvim | [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Default LazyVim colorscheme |
| catppuccin | [catppuccin/nvim](https://github.com/catppuccin/nvim) | Colorscheme (bundled) |
| nui.nvim | [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim) | UI primitives (dependency) |

## LSP, completion, format, lint

| Plugin | Repo | Role |
| --- | --- | --- |
| nvim-lspconfig | [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configs |
| mason.nvim | [mason-org/mason.nvim](https://github.com/mason-org/mason.nvim) | Install LSP/DAP/linters/formatters |
| mason-lspconfig.nvim | [mason-org/mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | Bridge Mason ↔ lspconfig |
| blink.cmp | [saghen/blink.cmp](https://github.com/saghen/blink.cmp) | Completion |
| friendly-snippets | [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippet collection |
| lazydev.nvim | [folke/lazydev.nvim](https://github.com/folke/lazydev.nvim) | Lua LSP extras for Neovim config |
| conform.nvim | [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim) | Formatting |
| nvim-lint | [mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint) | Linting |

## Editing

| Plugin | Repo | Role |
| --- | --- | --- |
| flash.nvim | [folke/flash.nvim](https://github.com/folke/flash.nvim) | Jump / search motions |
| mini.ai | [nvim-mini/mini.ai](https://github.com/nvim-mini/mini.ai) | Text objects (`a`/`i`) |
| mini.pairs | [nvim-mini/mini.pairs](https://github.com/nvim-mini/mini.pairs) | Autopairs |
| ts-comments.nvim | [folke/ts-comments.nvim](https://github.com/folke/ts-comments.nvim) | Treesitter-aware comments |
| grug-far.nvim | [MagicDuck/grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) | Search and replace |
| todo-comments.nvim | [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODO/FIXME |
| trouble.nvim | [folke/trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostics / loclist UI |

## Git

| Plugin | Repo | Role |
| --- | --- | --- |
| gitsigns.nvim | [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Gutter signs, hunks |

## Treesitter

| Plugin | Repo | Role |
| --- | --- | --- |
| nvim-treesitter | [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax / highlighting |
| nvim-treesitter-textobjects | [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Treesitter text objects |
| nvim-ts-autotag | [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | Auto close/rename HTML tags |

## Disabled in this config

These are not loaded. `noice.nvim` is still in `lazy-lock.json` from a previous install.

| Plugin | Repo | How disabled |
| --- | --- | --- |
| noice.nvim | [folke/noice.nvim](https://github.com/folke/noice.nvim) | `enabled = false` in `lua/plugins/disabled.lua` |
| dashboard-nvim | [nvimdev/dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) | `enabled = false` in `lua/plugins/disabled.lua` |
| snacks dashboard | — | `dashboard = { enabled = false }` in `lua/plugins/ui.lua` |

## Local overrides (not extra plugins)

| File | What it does |
| --- | --- |
| `lua/plugins/disabled.lua` | Turns off noice + dashboard-nvim |
| `lua/plugins/ui.lua` | Turns off snacks dashboard |
| `lua/plugins/example.lua` | Example spec only (`if true then return {} end`) — **not loaded** |

## Lockfile (name → commit)

| Plugin | Branch | Commit |
| --- | --- | --- |
| LazyVim | main | `c10948c50b18fae7f256433afdef09e432410480` |
| blink.cmp | main | `78336bc89ee5365633bcf754d93df01678b5c08f` |
| bufferline.nvim | main | `655133c3b4c3e5e05ec549b9f8cc2894ac6f51b3` |
| catppuccin | main | `edefef779ab08ce1a4a404713e3012b0d202bd35` |
| conform.nvim | master | `016802de402556da54c36bd7359b441266b01cdd` |
| flash.nvim | main | `5f0f270fdc7c5b0c21d903ee85b9cb06f2ac636a` |
| friendly-snippets | main | `6cd7280adead7f586db6fccbd15d2cac7e2188b9` |
| gitsigns.nvim | main | `5be654f2232c10ddcad19c1607a67b6b4b78fc29` |
| grug-far.nvim | main | `11595bf747edc270bce2069d1020502ad4ae56cf` |
| lazy.nvim | main | `85c7ff3711b730b4030d03144f6db6375044ae82` |
| lazydev.nvim | main | `ff2cbcba459b637ec3fd165a2be59b7bbaeedf0d` |
| lualine.nvim | master | `221ce6b2d999187044529f49da6554a92f740a96` |
| mason-lspconfig.nvim | main | `40276c4df7e6bdce6801d6c035c6227f9115a855` |
| mason.nvim | main | `2a6940af80375532e5e9e7c1f2fc6319a1b7a69d` |
| mini.ai | main | `25248c6aa002391936a6200f12d1466015987133` |
| mini.icons | main | `98faae31e9be1cc054ae63485e58ceb185efcad0` |
| mini.pairs | main | `b1c5a726921b7a8c9321e9a7a208aa0571de5810` |
| noice.nvim | main | `7bfd942445fb63089b59f97ca487d605e715f155` |
| nui.nvim | main | `10fc361835c856ba4233ef5ea135b919bf3dce97` |
| nvim-lint | master | `3d55c8f67c6ae5c15e1042571e107c7a3d5c5f4e` |
| nvim-lspconfig | master | `84252f9832fb5b9024fe9f7258e7c2aff915e6fb` |
| nvim-treesitter | main | `427e9222363d07c32d6db6169e4049c28d58d141` |
| nvim-treesitter-textobjects | main | `5c7b0263797dfd1bd6202f2b219f3b53a80b2187` |
| nvim-ts-autotag | main | `88c1453db4ba7dd24131086fe51fdf74e587d275` |
| persistence.nvim | main | `b20b2a7887bd39c1a356980b45e03250f3dce49c` |
| plenary.nvim | master | `74b06c6c75e4eeb3108ec01852001636d85a932b` |
| snacks.nvim | main | `882c996cf28183f4d63640de0b4c02ec886d01f2` |
| todo-comments.nvim | main | `31e3c38ce9b29781e4422fc0322eb0a21f4e8668` |
| tokyonight.nvim | main | `cdc07ac78467a233fd62c493de29a17e0cf2b2b6` |
| trouble.nvim | main | `bd67efe408d4816e25e8491cc5ad4088e708a69a` |
| ts-comments.nvim | main | `a59d6092213447450191122c9346f309161504cb` |
| which-key.nvim | main | `3aab2147e74890957785941f0c1ad87d0a44c15a` |

Refresh this list after plugin changes with `:Lazy` / updating `lazy-lock.json`.
