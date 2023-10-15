return {
    {
        "bluz71/vim-nightfly-colors",
        enabled = false,
        priority = 1000,
        lazy = false,
        config = function()
            vim.g.nightflyTransparent = true
            vim.cmd([[colorscheme nightfly]])
        end,
    },
    {
        "folke/tokyonight.nvim",
        -- enabled = false,
        priority = 1000,
        lazy = false,
        config = function()
            require("tokyonight").setup({
                transparent = true,
                styles = {
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "transparent", -- style for sidebars, see below
                    floats = "transparent", -- style for floating windows
                },
            })
            vim.cmd([[colorscheme tokyonight-moon]])
            -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },
    -- catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        enabled = false,
        priority = 1000,
        lazy = false,
        config = function()
            local catppuccin = require("catppuccin")

            catppuccin.setup({
                transparent_background = true,
                integrations = {
                    alpha = true,
                    cmp = true,
                    flash = true,
                    gitsigns = true,
                    illuminate = true,
                    indent_blankline = { enabled = true },
                    lsp_trouble = true,
                    mason = true,
                    mini = true,
                    native_lsp = {
                        enabled = true,
                        underlines = {
                            errors = { "undercurl" },
                            hints = { "undercurl" },
                            warnings = { "undercurl" },
                            information = { "undercurl" },
                        },
                    },
                    navic = { enabled = true, custom_bg = "lualine" },
                    nvimtree = { enabled = true, show_root = true },
                    neotest = true,
                    noice = true,
                    notify = true,
                    neotree = true,
                    semantic_tokens = true,
                    telescope = true,
                    treesitter = true,
                    which_key = true,
                    bufferline = true,
                },
            })

            vim.cmd([[colorscheme catppuccin]])
        end,
    },
}
