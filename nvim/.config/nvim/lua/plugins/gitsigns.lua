return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- hoặc "overlay", "right_align"
      delay = 800,
      ignore_whitespace = false,
    },
    current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
  },
}
