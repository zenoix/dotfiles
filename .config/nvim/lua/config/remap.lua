vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<CMD>Oil --float<CR>")
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- Keep cursor still when connecting lines to the end of previous lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle of screen when jumping around page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in the middle of screen when searching for text
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- When pasting over something, keep the original thing in the clipboard
vim.keymap.set("x", "<leader>p", '"_dP')

-- Yank into computer clipboard
vim.keymap.set("v", "<leader>y", '"+y')

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Change terminal emulator normal mode key to esc
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>")

-- Move cursor to next and prev line in wrap mode
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

