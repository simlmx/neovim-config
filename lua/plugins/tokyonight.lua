return {
  "tokyonight.nvim",
  opts = {
    on_colors = function(colors)
      colors.border = "#565f89"
      -- Make these darker otherwise they are hard to read.
      colors.terminal_black = "#828BBF"
      colors.comment = "#828BBF"
    end,
  },
}
