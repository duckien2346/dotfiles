return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
  --   options = {
  --     mode = "tabs",
  --     separator_style = "slant",
  --   },
  },
  config = function()
    local bufferline = require('bufferline')
    bufferline.setup({})
    setKeyMap("n", "<A-l>", ":bnext<CR>")
    setKeyMap("n", "<A-h>", ":bprevious<CR>")
    setKeyMap("n", "<C-w>", ":bdelete<CR>")
    

  end,
}
