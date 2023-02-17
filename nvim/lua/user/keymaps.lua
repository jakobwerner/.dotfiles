vim.g.mapleader = " "

vim.keymap.set("n", "<esc>", ":nohlsearch<cr>", {silent = true})

vim.keymap.set("n", "<c-h>", "<c-w>h")
vim.keymap.set("n", "<c-j>", "<c-w>j")
vim.keymap.set("n", "<c-k>", "<c-w>k")
vim.keymap.set("n", "<c-l>", "<c-w>l")

vim.keymap.set({"v", "x"}, "p", [["_dP]])
