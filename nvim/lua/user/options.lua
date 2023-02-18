vim.opt.swapfile = false
vim.opt.hidden = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "number"

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1
vim.opt.smarttab = true

vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = ">>>"

vim.opt.mouse = "nv"

vim.opt.scrolloff = 5

vim.opt.hidden = true

vim.opt.smartcase = true

vim.opt.clipboard = "unnamedplus"

vim.opt.cursorline = true

vim.opt.undofile = true

vim.opt.incsearch = true

-- Avoid comments extending to the next line
-- The following lua way should also work, but it doesn't:
-- vim.opt.formatoptions:remove({"c", "r", "o"})
vim.cmd([[
augroup auto_comment
autocmd!
autocmd FileType * setlocal formatoptions-=cro
augroup end
]])
