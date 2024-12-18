-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Set leader
vim.g.mapleader = " "

-- Copy paste from clipboard
vim.keymap.set({ "n", "v" }, "<leader>gy", '"+y<CR>', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>gp", '"+p<CR>', { noremap = true, silent = true })

-- Open file explorer faster
vim.keymap.set("n", "<leader>t", vim.cmd.Ex)
