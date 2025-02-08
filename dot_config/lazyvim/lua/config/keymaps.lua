-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<esc>")

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')

-- disable Ctrl+Z to prevent accidental suspension of Neovim process
vim.keymap.set("n", "<C-z>", "<Nop>", { desc = "Disable Ctrl+Z to prevent accidental suspension of Neovim" })

-- shortcut for IncRename
vim.keymap.set("n", "<leader>rn", ":IncRename ")
