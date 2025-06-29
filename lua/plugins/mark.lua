return {
  {
    "inkarkat/vim-mark",
    dependencies = {
      "inkarkat/vim-ingo-library",
    },
    init = function()
      vim.g.mw_no_mappings = 1
      vim.keymap.set("n", "<leader>mm", "<Plug>MarkSet", { desc = "Toggle mark", silent = true })
      vim.keymap.set("n", "<leader>mc", "<Plug>MarkAllClear", { desc = "Clear marks", silent = true })
      -- My old keymaps
      vim.keymap.set("n", "\\m", "<Plug>MarkSet", { desc = "Toggle mark", silent = true })
      vim.keymap.set("n", "\\e", "<Plug>MarkSearchCurrentNext", { desc = "Next mark", silent = true })
      vim.keymap.set("n", "\\w", "<Plug>MarkSearchCurrentPrev", { desc = "Previous mark", silent = false })
    end,
  },
}
