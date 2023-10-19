return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "jayp0521/mason-null-ls.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        -- import mason-null-ls
        local mason_null_ls = require("mason-null-ls")

        -- import mason-null-ls
        -- local mason_nvim_dap = require("mason-nvim-dap")

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "lua_ls",
                -- "html",
                -- "cssls",
                -- "tsserver",
                -- "tailwindcss",
                -- "jsonls",
                -- "graphql",
                -- "emmet_ls",
                -- "pyright",
                -- "angularls",
                -- "omnisharp",
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
        })

        mason_null_ls.setup({
            -- list of formatters & linters for mason to install
            ensure_installed = {
                "stylua", -- lua formatter
                "prettier", -- ts/js formatter
                "eslint_d", -- ts/js linter
                "csharpier",
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = false,
        })

        -- mason_nvim_dap.setup({
        -- })
    end,
}
