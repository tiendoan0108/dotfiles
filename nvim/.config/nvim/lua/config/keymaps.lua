-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Absolute path:line:col (e.g. /home/user/project/lua/plugins/init.lua:42:10)
vim.keymap.set({ "n", "v" }, "<leader>cP", function()
  local path = vim.fn.expand("%:p")
  local mode = vim.fn.mode()
  local result

  if mode == "V" then
    -- Visual line mode: copy path:startline-endline
    local start_line = vim.fn.line("v")
    local end_line = vim.fn.line(".")
    if start_line > end_line then
      start_line, end_line = end_line, start_line
    end
    result = string.format("%s:%d-%d", path, start_line, end_line)
  else
    -- Normal mode (or other visual modes): copy path:line:col
    result = string.format("%s:%d:%d", path, vim.fn.line("."), vim.fn.col("."))
  end

  vim.fn.setreg("+", result)
  print("Copied: " .. result)
end, { desc = "Copy absolute path:line:col (or line range in V-mode)" })

vim.keymap.set("i", "jk", "<ESC>", { desc = "Thoát chế độ insert bằng jk" })

vim.keymap.set("n", "<leader>gH", function()
  vim.cmd("botright 15split | terminal hunk diff --watch")
  vim.cmd("startinsert")
end, { desc = "Open hunk diff" })
