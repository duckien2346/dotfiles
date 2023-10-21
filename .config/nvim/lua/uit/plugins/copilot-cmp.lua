return {
    "zbirenbaum/copilot-cmp",
    enabled = false,
    config = function()
        require("copilot_cmp").setup()
        -- require("copilot_cmp").setup({
        --     event = { "InsertEnter", "LspAttach" },
        --     fix_pairs = true,
        -- })
    end,
}
