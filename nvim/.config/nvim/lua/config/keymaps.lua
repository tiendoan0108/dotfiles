-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Absolute path:line:col (e.g. /home/user/project/lua/plugins/init.lua:42:10)
vim.keymap.set({ "n", "v" }, "<leader>cP", function()
  local result = string.format("%s:%d:%d", vim.fn.expand("%:p"), vim.fn.line("."), vim.fn.col("."))
  vim.fn.setreg("+", result)
  print("Copied: " .. result)
end, { desc = "Copy absolute path:line:col" })
