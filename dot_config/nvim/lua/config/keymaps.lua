-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set({"i", "c"}, [[<C-j>]], [[<Plug>(skkeleton-toggle)]])
vim.keymap.set({"i", "c"}, [[<C-n>]], "<cmd>call pum#map#insert_relative(+1)<CR>")
vim.keymap.set({"i", "c"}, [[<C-p>]], "<cmd>call pum#map#insert_relative(-1)<CR>")
vim.keymap.set({"i", "c"}, [[<C-y>]], "<cmd>call pum#map#confirm()<CR>")
vim.keymap.set({"i", "c"}, [[<C-e>]], "<cmd>call pum#map#cancel()<CR>")
vim.keymap.set({"i", "c"}, [[<PageDown>]], "<cmd>call pum#map#insert_relative_page(+1)<CR>")
vim.keymap.set({"i", "c"}, [[<PageUp>]], "<cmd>call pum#map#insert_relative_page(-1)<CR>")
