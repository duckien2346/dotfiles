return {
    "akinsho/bufferline.nvim",
    enabled = false,
    dependencies = { "nvim-tree/nvim-web-devicons", },
    version = "*",
    config = function()
        local bufferline = require("bufferline")
        bufferline.setup({
            options = {
                separator_style = "thin", -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' }
                diagnostics = "nvim_lsp",
                offsets = {
                  {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "left",
                    separator = true, -- use a "true" to enable the default, or set your own character
                  },
                },
            },
        })

        local opts = { noremap = true, silent = true }
        vim.keymap.set({ "n", "i" }, "<A-l>", "<Esc>:bnext<CR>", opts)
        vim.keymap.set({ "n", "i" }, "<A-h>", "<Esc>:bprevious<CR>", opts)
        -- setvim.keymap.{ "n", "i" }, "<C-w>", ":bdelete<CR>", opts)
        vim.keymap.set({ "n" }, "<C-w>", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)

        -- transparent_groups
        -- vim.g.transparent_groups = vim.list_extend(
        --     vim.g.transparent_groups or {},
        --     vim.tbl_map(function(v)
        --         return v.hl_group
        --     end, vim.tbl_values(require("bufferline.config").highlights))
        -- )

    end,
}
