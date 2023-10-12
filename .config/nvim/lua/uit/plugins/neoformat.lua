return {
  "sbdchd/neoformat",
  enabled = false,
  config = function()
    -- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    --   pattern = { "*" },
    --   command = "undojoin | Neoformat",
    -- })
    -- vim.keymap.set("n", "<leader>fm", "<cmd>undojoin | Neoformat<CR>")
  end,
}
