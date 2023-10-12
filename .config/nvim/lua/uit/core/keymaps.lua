vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- general keymap
keymap.set("i", "jk", "<ESC>", opts)
keymap.set("n", "<leader>nh", ":nohl<CR>", opts) -- clear search highlights

keymap.set("n", "<leader>=", "<C-a>", opts) -- increase a number
keymap.set("n", "<leader>-", "<C-x>", opts) -- decrease

keymap.set({ "n", "i" }, "<C-s>", "<ESC><cmd>SessionSave<CR>:wa<CR>", opts)
-- keymap.set("i", "<C-z>", "<ESC>ua", opts)
-- keymap.set("i", "<C-Z>", "<ESC><C-r>a", opts)
-- keymap.set("i", "<C-o>", "<C-O>o", opts)
-- keymap.set("i", "<C-O>", "<C-O>O", opts)

keymap.set("v", "<leader>y", '"+y', opts)
keymap.set("v", "<leader>p", '"+p', opts)

keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- keymap.set("n", "w", "w2zl", opts)
-- keymap.set("n", "b", "b2zh", opts)

keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

keymap.set("x", "p", '"_dP', opts)

-- keymap.set("x", "<Tab>", "gv=", opts)

-- Move text up and down
keymap.set("n", "<A-j>", ":m .+1<CR>==", opts)
keymap.set("n", "<A-k>", ":m .-2<CR>==", opts)
keymap.set("i", "<A-j>", "<ESC>:m .+1<CR>==gi", opts)
keymap.set("i", "<A-k>", "<ESC>:m .-2<CR>==gi", opts)
keymap.set("v", "<A-k>", ":m .-2<CR>gv=gv", opts)
keymap.set("v", "<A-j>", ":m .+1<CR>gv=gv", opts)

-- Visual Block --
-- Move text up and down
-- keymap.set("x", "J", ":m '>+1<CR>gv=gv", opts)
-- keymap.set("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap.set("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap.set("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- screen management
keymap.set("n", "<leader>sv", ":vert split<CR>", opts) -- split window vertically
keymap.set("n", "<leader>sh", ":hor split", opts) -- split window horizontally
keymap.set("n", "<leader>se", ":vert wincmd =", opts) -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", opts) -- close current split window

-- tab management
keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- horizontal scroll
keymap.set("n", "<S-h>", "20zh", opts) -- Scroll  characters to the left
keymap.set("n", "<S-l>", "20zl", opts) -- Scroll  characters to the right
keymap.set("n", "<S-j>", "10<C-d>zz", opts)
keymap.set("n", "<S-k>", "10<C-u>zz", opts)

----------------------
-- Plugin Keybinds
----------------------

-- nvim-maximizer
--keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- toggle split window maximization

-- nvim-tree
--keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- telescope
--keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find files within current working directory, respects .gitignore
--keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- find string in current working directory as you type
--keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory
--keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers in current neovim instance
--keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags

-- telescope git commands (not on youtube nvim video, opts)
--keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
--keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", opts) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
--keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", opts) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
--keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts) -- list git branches (use <cr> to checkout) ["gb" for git branch]
--keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts) -- list current changes per file with diff preview ["gs" for git status]

-- bufferline
--keymap.set("n", "<A-l>", ":bnext<CR>", opts)
--keymap.set("n", "<A-h>", ":bprevious<CR>", opts)
--keymap.set("n", "<C-w>", ":Bdelete<CR>", opts)
