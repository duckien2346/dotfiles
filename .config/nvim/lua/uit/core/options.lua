-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tabs & indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true

-- line wrapping
vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- cursor line
vim.opt.cursorline = true
-- vim.opt.guicursor = ""

-- appearance
vim.opt.termguicolors = true
-- vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8

-- backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
vim.opt.clipboard:append("unnamedplus")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- add keywords
vim.opt.iskeyword:append("-")
vim.opt.isfname:append("@-@")

-- fold
vim.opt.foldenable = false -- auto folden
vim.opt.foldmethod = "indent" -- indent syntax


vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
