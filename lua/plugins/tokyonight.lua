return {
  "tokyonight.nvim",
  opts = {
    on_colors = function(colors)
      colors.border = "#565f89"
      -- Make these darker otherwise they are hard to read.
      colors.comment = "#858cce"
      colors.terminal_black = "#828BBF"
    end,
    on_highlights = function(hl, c)
      hl.ColorColumn = { bg = c.fg_gutter }
    end,
  },
}
