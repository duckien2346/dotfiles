return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        dependencies = {
            "windwp/nvim-ts-autotag",
        },
        config = function()
            -- import nvim-treesitter plugin
            local treesitter = require("nvim-treesitter.configs")

            -- configure treesitter
            treesitter.setup({ -- enable syntax highlighting
                highlight = {
                    enable = true,
                },
                -- enable indentation
                indent = { enable = true },
                -- enable autotagging (w/ nvim-ts-autotag plugin)
                autotag = { enable = true },
                -- ensure these language parsers are installed
                ensure_installed = {
                    "lua",
                    "vim",
                    -- "json",
                    -- "javascript",
                    -- "typescript",
                    -- "tsx",
                    -- "yaml",
                    -- "html",
                    -- "css",
                    -- "markdown",
                    -- "markdown_inline",
                    -- "graphql",
                    -- "bash",
                    -- "dockerfile",
                    -- "gitignore",
                    -- "c_sharp",
                    -- "java",
                },
                -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
                context_commentstring = {
                    enable = true,
                    enable_autocmd = false,
                },
                -- auto install above language parsers
                auto_install = true,
            })
        end,
    },
}
