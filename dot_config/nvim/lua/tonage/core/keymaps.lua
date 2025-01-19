-- set leader key to space
vim.g.mapleader = " "

-- set localleader key to \
vim.g.maplocalleader = "\\"

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- disable Ctrl+Z to prevent accidental suspension of Neovim process
keymap.set("n", "<C-z>", "<Nop>", { desc = "Disable Ctrl+Z to prevent accidental suspension of Neovim" })

-- tabs
keymap.set("n", "<leader><tab>o", "<cmd>tabonly<CR>", { desc = "Close other tabs" }) -- close other tabs
keymap.set("n", "<leader><tab>d", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader><tab>n", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader><tab>p", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

-- buffers
keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" }) -- 次のバッファに移動
keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" }) -- 前のバッファに移動
keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" }) -- 現在のバッファを削除
keymap.set("n", "<leader>bo", ":%bd|e#|bd#<CR>", { desc = "Delete other buffers" }) -- 現在のバッファ以外を削除
