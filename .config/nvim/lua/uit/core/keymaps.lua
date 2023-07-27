vim.g.mapleader = " "

function setKeyMap(mode, key, mapper)
	-- vim.keymap.set(mode, key, mapper, { silent = true })
	vim.keymap.set(mode, key, mapper)
end

-- general keymaps
setKeyMap("i", "jk", "<ESC>")
setKeyMap("n", "<leader>nh", ":nohl<CR>") -- clear search highlights

setKeyMap("n", "<leader>=", "<C-a>") -- increase a number
setKeyMap("n", "<leader>-", "<C-x>") -- decrease

setKeyMap("n", "<C-d>", "<C-d>zz")
setKeyMap("n", "<C-u>", "<C-u>zz")

setKeyMap("n", "n", "nzzzv")
setKeyMap("n", "N", "Nzzzv")

setKeyMap("x", "<leader>p", '"_dP')

-- Move text up and down
setKeyMap("n", "<A-j>", ":m .+1<CR>==")
setKeyMap("n", "<A-k>", ":m .-2<CR>==")
setKeyMap("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
setKeyMap("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
setKeyMap("v", "<A-k>", ":m .-2<CR>gv=gv")
setKeyMap("v", "<A-j>", ":m .+1<CR>gv=gv")

-- Visual Block --
-- Move text up and down
setKeyMap("x", "J", ":m '>+1<CR>gv=gv")
setKeyMap("x", "K", ":m '<-2<CR>gv=gv")
setKeyMap("x", "<A-j>", ":m '>+1<CR>gv=gv")
setKeyMap("x", "<A-k>", ":m '<-2<CR>gv=gv")

-- screen management
setKeyMap("n", "<leader>sv", "<C-w>v") -- split window vertically
setKeyMap("n", "<leader>sh", "<C-w>s") -- split window horizontally
setKeyMap("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
setKeyMap("n", "<leader>sx", ":close<CR>") -- close current split window

-- tab management
setKeyMap("n", "<leader>to", ":tabnew<CR>") -- open new tab
setKeyMap("n", "<leader>tx", ":tabclose<CR>") -- close current tab
setKeyMap("n", "<leader>tn", ":tabn<CR>") --  go to next tab
setKeyMap("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- horizontal scroll
setKeyMap("n", "<S-h>", "10zh") -- Scroll 20 characters to the left
setKeyMap("n", "<S-l>", "10zl") -- Scroll 20 characters to the right
setKeyMap("n", "<S-j>", "10<C-E>")
setKeyMap("n", "<S-k>", "10<C-Y>")

----------------------
-- Plugin Keybinds
----------------------

-- nvim-maximizer
setKeyMap("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
setKeyMap("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
setKeyMap("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
setKeyMap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
setKeyMap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
setKeyMap("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
setKeyMap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
setKeyMap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
setKeyMap("n", "<leader>gf", "<cmd>Telescope git_files<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
setKeyMap("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
setKeyMap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
setKeyMap("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- bufferline
setKeyMap("n", "<A-l>", ":bnext<CR>")
setKeyMap("n", "<A-h>", ":bprevious<CR>")
setKeyMap("n", "<C-w>", ":Bdelete<CR>")
