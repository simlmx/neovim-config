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
      local fg_highlight = "#f2f6ff"
      hl.ColorColumn = { bg = c.fg_gutter }

      -- Fix Treesitter Markdown inline code
      hl["@markup.raw.markdown_inline"] = {
        fg = c.green,
        bg = c.bg_highlight,
      }

      -- Fix `helpCommand` in help docs
      hl.helpCommand = {
        fg = fg_highlight,
        bg = c.bg_highlight,
        bold = true,
      }
    end,
  },
}

-- These are the tokyonight-moon colors, for reference
-- https://github.com/folke/tokyonight.nvim/blob/main/lua/tokyonight/colors/moon.lua
-- bg = "#222436",
--   bg_dark = "#1e2030",
--   bg_dark1 = "#191B29",
--   bg_highlight = "#2f334d",
--   blue = "#82aaff",
--   blue0 = "#3e68d7",
--   blue1 = "#65bcff",
--   blue2 = "#0db9d7",
--   blue5 = "#89ddff",
--   blue6 = "#b4f9f8",
--   blue7 = "#394b70",
--   comment = "#636da6",
--   cyan = "#86e1fc",
--   dark3 = "#545c7e",
--   dark5 = "#737aa2",
--   fg = "#c8d3f5",
--   fg_dark = "#828bb8",
--   fg_gutter = "#3b4261",
--   green = "#c3e88d",
--   green1 = "#4fd6be",
--   green2 = "#41a6b5",
--   magenta = "#c099ff",
--   magenta2 = "#ff007c",
--   orange = "#ff966c",
--   purple = "#fca7ea",
--   red = "#ff757f",
--   red1 = "#c53b53",
--   teal = "#4fd6be",
--   terminal_black = "#444a73",
--   yellow = "#ffc777",
--   git = {
--     add = "#b8db87",
--     change = "#7ca1f2",
--     delete = "#e26a75",
--   }
