return {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local nvimtree = require("nvim-tree")

        -- recommended settings from nvim-tree documentation
        -- vim.g.loaded_netrw = 1
        -- vim.g.loaded_netrwPlugin = 1

        -- change color for arrows in tree to light blue
        vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])
        vim.cmd([[ highlight NvimTreeWinSeparator guifg=#3FC5FF ]])

        -- configure nvim-tree
        nvimtree.setup({
            sort_by = "case_sensitive",
            view = {
                width = 35,
                relativenumber = true,
            },
            -- change folder arrow icons
            renderer = {
                indent_width = 2,
                indent_markers = {
                    enable = true,
                    inline_arrows = false,
                },
                -- highlight_git = true,
                -- highlight_modified = "icon", -- "none", "icon", "name" or "all"
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "", -- arrow when folder is closed
                            arrow_open = "", -- arrow when folder is open
                        },
                    },
                },
            },
            -- disable window_picker for
            -- explorer to work well with
            -- window splits
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
            filters = {
                dotfiles = false,
                git_clean = false,
                no_buffer = false,
                custom = { ".DS_Store", ".vscode", ".idea" },
            },
            git = {
                ignore = true,
            },
        })

        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        -- keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
        keymap.set("n", "<leader>ee", "<cmd>NvimTreeFindFileToggle<CR>",
            { desc = "Toggle file explorer on current file" })                                                          -- toggle file explorer on current file
        keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })                 -- collapse file explorer
        keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })                   -- refresh file explorer
    end,
}