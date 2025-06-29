return {
  -- add symbols-outline
  {
    "inkarkat/vim-mark",
    dependencies = {
      "inkarkat/vim-ingo-library",
    },
    init = function()
      vim.g.mw_no_mappings = 1
      vim.keymap.set("n", "<leader>um", "<Plug>MarkSet", { desc = "Toggle mark", silent = true })
      vim.keymap.set("n", "<leader>uM", "<Plug>MarkAllClear", { desc = "Clear marks", silent = true })
    end,
  },
}
-- patate
-- patate
