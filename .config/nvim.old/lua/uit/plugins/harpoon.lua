return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("telescope").load_extension("harpoon")

        local harpoon = require("harpoon")
        harpoon.setup({
            global_settings = {
                -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
                save_on_toggle = true,

                -- saves the harpoon file upon every change. disabling is unrecommended.
                save_on_change = true,
                -- set marks specific to each git branch inside git repository
                mark_branch = true,
                -- enable tabline with harpoon marks
                tabline = false,
                tabline_prefix = "   ",
                tabline_suffix = "   ",
            },
            menu = {
                -- width = vim.api.nvim_win_get_width(0) - 4,
                width = 60,
            },
        })

        local harpoon_ui = require("harpoon.ui")
        vim.keymap.set("n", "<M-a>", require("harpoon.mark").add_file, { desc = "Mark file with harpoon" })
        vim.keymap.set("n", "<M-m>", harpoon_ui.toggle_quick_menu, { desc = "Toggle harpoon menu" })
        vim.keymap.set("n", "<M-n>", harpoon_ui.nav_next, { desc = "Go to next harpoon mark" })
        vim.keymap.set("n", "<M-p>", harpoon_ui.nav_prev, { desc = "Go to previous harpoon mark" })

        vim.keymap.set("n", "<M-1>", function() harpoon_ui.nav_file(1) end, { desc = "Navigates to file 1" })
        vim.keymap.set("n", "<M-2>", function() harpoon_ui.nav_file(2) end, { desc = "Navigates to file 2" })
        vim.keymap.set("n", "<M-3>", function() harpoon_ui.nav_file(3) end, { desc = "Navigates to file 3" })
        vim.keymap.set("n", "<M-4>", function() harpoon_ui.nav_file(4) end, { desc = "Navigates to file 4" })

    end,
}
