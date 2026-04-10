-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  local result = vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
  if vim.v.shell_error ~= 0 then
    -- stylua: ignore
    vim.api.nvim_echo({ { ("Error cloning lazy.nvim:\n%s\n"):format(result), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
    vim.fn.getchar()
    vim.cmd.quit()
  end
end

vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"

-- Show invisible characters
vim.opt.list = true

-- Definir 4 espaços de indentação
vim.opt.tabstop = 4        -- Um tab conta como 4 espaços
vim.opt.shiftwidth = 4     -- Tamanho do recuo (identação)
vim.opt.softtabstop = 4    -- Número de espaços ao editar
vim.opt.expandtab = true   -- Converter tabs em espaços

-- Customize the characters to display
vim.opt.listchars = {
  tab = '»•',       -- Represents tabs with bullets for the entire width
  trail = '·',      -- Represents trailing spaces with a dot
  space = '•',      -- Represents all spaces with a dot
  nbsp = '␣',       -- Display non-breaking spaces
  eol = '¬',        -- Displey End of Line EOL
}
