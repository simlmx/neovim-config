-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Remove all snacks animations
vim.g.snacks_animate = false

-- Set some python virtual-env environment variables when using poetry.

local function set_poetry_venv()
  local poetry_venv_path = vim.fn.trim(vim.fn.system("poetry env info -p 2>/dev/null"))
  if vim.v.shell_error == 0 and poetry_venv_path ~= "" then
    vim.env.VIRTUAL_ENV = poetry_venv_path
    vim.env.PATH = poetry_venv_path .. "/bin:" .. vim.env.PATH
  end
end

set_poetry_venv()
