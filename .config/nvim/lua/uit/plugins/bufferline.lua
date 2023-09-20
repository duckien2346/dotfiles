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
    setKeyMap("n", "<A-l>", ":bnext<CR>")
    setKeyMap("n", "<A-h>", ":bprevious<CR>")
    -- setKeyMap("n", "<C-w>", ":bdelete<CR>")
    setKeyMap("n", "<C-w>", ":bp<bar>sp<bar>bn<bar>bd<CR>")
  end,
}
