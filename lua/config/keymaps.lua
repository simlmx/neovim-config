-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<esc>:w<cr>", { desc = "Save + To Normal Mode" })
map("n", "G", "Gzz")

map("n", "cp", function()
  local current_word = vim.fn.expand("<cword>")
  local new_word

  if current_word:sub(1, 1) == "_" then
    -- Remove leading underscore
    new_word = current_word:sub(2)
  else
    -- Add leading underscore
    new_word = "_" .. current_word
  end

  vim.lsp.buf.rename(new_word)
end, { desc = "Toggle public/private (leading underscore)" })

-- remove LazyVim's remaps for j/k
vim.keymap.del("n", "j")
vim.keymap.del("n", "k")
vim.keymap.del("v", "j")
vim.keymap.del("v", "k")

-- Make search git files the default.
map("n", "<leader><leader>", Snacks.picker.git_files, { desc = "Git files" })
