require("uit.plugins-setup")

-- core
require("uit.core.options")
require("uit.core.keymaps")
require("uit.core.colorscheme")

-- plugins
require("uit.plugins.comment")
require("uit.plugins.nvim-tree")
require("uit.plugins.lualine")
require("uit.plugins.telescope")
require("uit.plugins.nvim-cmp")
require("uit.plugins.autopairs")
require("uit.plugins.gitsigns")
require("uit.plugins.treesitter")
require("uit.plugins.bufferline")

-- lsp
require("uit.plugins.lsp.mason")
require("uit.plugins.lsp.lspsaga")
require("uit.plugins.lsp.lspconfig")
require("uit.plugins.lsp.null-ls")
