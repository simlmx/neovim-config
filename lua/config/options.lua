-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Remove all snacks animations
vim.g.snacks_animate = false
vim.g.autoformat = false
vim.o.conceallevel = 0

vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.o.wildmode="list:longest"
vim.o.wrap = true

vim.o.scrolloff=10

-- vertical lines
vim.o.colorcolumn = "72,80,120"
