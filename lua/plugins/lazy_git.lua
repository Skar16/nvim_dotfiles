return {
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit", -- Load plugin only when :LazyGit is called
    config = function()
      require("lazygit").setup({
        -- Configure Lazygit integration
        -- Default settings can be adjusted here if needed
        use_custom_config = false, -- Use a custom Lazygit configuration file (set true if you have one)
        config_file = "",          -- Path to custom Lazygit config file (if use_custom_config is true)
        -- Default key mappings
        keymaps = {
          toggle_float = "<leader>gg",         -- Open/close Lazygit in a floating window
          current_file = "<leader>gc",         -- Show Lazygit for the current file
          filter = "<leader>gf",               -- Show Lazygit filtered by current directory
          filter_current_file = "<leader>gfc", -- Filter commits affecting the current file
        },
      })
    end,
  },
}
