return {
    "mfussenegger/nvim-dap",
    config = function()

        local dap = require("dap")
        local widgets = require("dap.ui.widgets")
        local frames_sidebar = widgets.sidebar(widgets.frames)
        local widgets_sidebar = widgets.sidebar(widgets.scopes)

        vim.keymap.set("n", "<Leader>dn", dap.continue)
        vim.keymap.set("n", "<Leader>dc", dap.close)
        vim.keymap.set("n", "<Leader>dj", dap.down)
        vim.keymap.set("n", "<Leader>dk", dap.up)

        vim.keymap.set("n", "<Leader>l", dap.step_over)
        vim.keymap.set("n", "<Leader>j", dap.step_into)
        vim.keymap.set("n", "<Leader>k", dap.step_out)

        vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint)
        vim.keymap.set("n", "<Leader>B", dap.set_breakpoint)
        -- vim.keymap.set("n", "<Leader>lp", dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: ")))

        vim.keymap.set("n", "<Leader>dr", dap.repl.toggle)
        vim.keymap.set("n", "<Leader>dl", dap.run_last)
        vim.keymap.set({ "n", "v" }, "<Leader>dh", widgets.hover)
        -- vim.keymap.set({ "n", "v" }, "<Leader>dp", widgets.preview)
        vim.keymap.set("n", "<Leader>df", function()
            -- widgets.centered_float(widgets.frames)
            frames_sidebar.toggle()
        end)
        vim.keymap.set("n", "<Leader>ds", function()
            -- widgets.centered_float(widgets.scopes)
            widgets_sidebar.toggle()
        end)

        -- vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })
        -- vim.fn.sign_define("DapStopped", { text = "🛑", texthl = "", linehl = "", numhl = "" })
    end,
}
