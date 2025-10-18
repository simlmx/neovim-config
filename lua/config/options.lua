-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false
vim.g.snacks_scroll = false

vim.g.autoformat = false
vim.o.conceallevel = 0

vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.o.wildmode = "list:longest"
vim.o.wrap = true

-- vertical lines
vim.o.colorcolumn = "72,80,120"

-- Disable clipboard integration - I like to keep my system clipboard separate!
vim.opt.clipboard = vim.empty_dict()

vim.g.root_spec = { ".git" }

vim.opt.listchars = {
  tab = "  ",
  trail = "·",
  nbsp = "␣",
}
