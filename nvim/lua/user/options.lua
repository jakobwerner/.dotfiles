-- Set highlight on search
vim.o.hlsearch = true
vim.o.incsearch = true

-- Tabs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1
vim.opt.smarttab = true

-- Line Numbers
vim.wo.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'number'

-- Enable mouse mode
vim.o.mouse = 'nv'

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true
vim.o.linebreak = true
vim.o.showbreak = ">>>"

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Scrolloff
vim.opt.scrolloff = 5

-- Allows to change buffers when there is unsaved work
vim.opt.hidden = true

-- Visually mark current line
vim.opt.cursorline = true
