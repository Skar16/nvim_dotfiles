return {
  {
    "github/copilot.vim",
    lazy = false, -- Load immediately
    config = function()
      -- Optionally set a keybinding to accept Copilot suggestions
      vim.g.copilot_no_tab_map = false -- Disable default `<Tab>` behavior
      -- vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end,
  },
}
