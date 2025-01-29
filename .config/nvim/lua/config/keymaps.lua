-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Sort out conflicts with tmux
local map = vim.api.nvim_set_keymap
map("!", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { noremap = true })
map("!", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { noremap = true })
map("!", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { noremap = true })
map("!", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { noremap = true })

-- Add a custom keybinding to toggle the colorscheme
vim.api.nvim_set_keymap("n", "<leader>tt", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true })
