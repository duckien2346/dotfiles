vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

-- general keymap
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", opts) -- clear search highlights
vim.keymap.set("n", "<leader>q", ":q!<CR>", opts) -- clear search highlights

vim.keymap.set("n", "<leader>=", "<C-a>", opts) -- increase a number
vim.keymap.set("n", "<leader>-", "<C-x>", opts) -- decrease

vim.keymap.set({ "n", "i" }, "<C-s>", "<ESC><cmd>SessionSave<CR>:wa<CR>", opts)
-- vim.keymap.set({ "n" }, "<C-a>", "gg<S-v><S-g>", opts)
-- vim.keymap.set("i", "<C-z>", "<ESC>ua", opts)
-- vim.keymap.set("i", "<C-Z>", "<ESC><C-r>a", opts)
-- vim.keymap.set("i", "<C-o>", "<C-O>o", opts)
-- vim.keymap.set("i", "<C-O>", "<C-O>O", opts)

vim.keymap.set("v", "<leader>y", '"+y', opts)
vim.keymap.set("v", "<leader>p", '"+p', opts)

vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- vim.keymap.set("n", "w", "w2zl", opts)
-- vim.keymap.set("n", "b", "b2zh", opts)

vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

vim.keymap.set("x", "p", '"_dP', opts)

-- vim.keymap.set("x", "<Tab>", "gv=", opts)

-- Move text up and down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", opts)
vim.keymap.set("i", "<A-j>", "<ESC>:m .+1<CR>==gi", opts)
vim.keymap.set("i", "<A-k>", "<ESC>:m .-2<CR>==gi", opts)
vim.keymap.set("v", "<A-k>", ":m .-2<CR>gv=gv", opts)
vim.keymap.set("v", "<A-j>", ":m .+1<CR>gv=gv", opts)

-- Visual Block --
-- Move text up and down
-- vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv", opts)
-- vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- screen management
vim.keymap.set("n", "<leader>sv", ":vert split<CR>", opts) -- split window vertically
vim.keymap.set("n", "<leader>sh", ":hor split<CR>", opts) -- split window horizontally
vim.keymap.set("n", "<leader>se", ":vert wincmd =<CR>", opts) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>", opts) -- close current split window

-- tab management
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- horizontal scroll
vim.keymap.set("n", "<S-h>", "20zh", opts) -- Scroll  characters to the left
vim.keymap.set("n", "<S-l>", "20zl", opts) -- Scroll  characters to the right
vim.keymap.set("n", "<S-j>", "10<C-d>zz", opts)
vim.keymap.set("n", "<S-k>", "10<C-u>zz", opts)

----------------------
-- Plugin Keybinds
----------------------

-- nvim-maximizer
--vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- toggle split window maximization

-- nvim-tree
--vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- telescope
--vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find files within current working directory, respects .gitignore
--vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- find string in current working directory as you type
--vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory
--vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers in current neovim instance
--vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags

-- telescope git commands (not on youtube nvim video, opts)
--vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
--vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", opts) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
--vim.keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", opts) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
--vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts) -- list git branches (use <cr> to checkout) ["gb" for git branch]
--vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts) -- list current changes per file with diff preview ["gs" for git status]

-- bufferline
--vim.keymap.set("n", "<A-l>", ":bnext<CR>", opts)
--vim.keymap.set("n", "<A-h>", ":bprevious<CR>", opts)
--vim.keymap.set("n", "<C-w>", ":Bdelete<CR>", opts)
