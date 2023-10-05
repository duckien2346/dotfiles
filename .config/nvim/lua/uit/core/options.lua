local opt = vim.opt -- for conciseness

-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true
-- opt.guicursor = ""

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.scrolloff = 8

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- add keywords
opt.iskeyword:append("-")

-- fold
opt.foldenable = false -- auto folden
opt.foldmethod = "indent" -- indent syntax
