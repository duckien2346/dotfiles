return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    local bufferline = require("bufferline")
    bufferline.setup({
      options = {
        separator_style = "thick", -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' }
        diagnostics = "nvim_lsp",
        -- offsets = {
        --   {
        --     filetype = "NvimTree",
        --     text = "File Explorer",
        --     highlight = "Directory",
        --     -- text_align = "left",
        --     separator = false, -- use a "true" to enable the default, or set your own character
        --   },
        -- },
      },
    })
    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<A-l>", ":bnext<CR>", opts)
    vim.keymap.set("n", "<A-h>", ":bprevious<CR>", opts)
    -- setvim.keymap."n", "<C-w>", ":bdelete<CR>", opts)
    vim.keymap.set("n", "<C-w>", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)
  end,
}
