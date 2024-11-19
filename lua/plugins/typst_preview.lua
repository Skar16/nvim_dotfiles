return {
  {
    "chomosuke/typst-preview.nvim",
    lazy = true,                              -- Load only when needed
    ft = { "typst" },                         -- Load only for Typst files
    dependencies = { "nvim-lua/plenary.nvim" }, -- Ensure Plenary is available
    build = ":TSInstall typst",               -- Ensure Tree-sitter parser for Typst is installed
    config = function()
      require("typst-preview").setup({
        preview_opts = { "xdg-open" },                      -- Default PDF viewer for Linux
        compiler_args = { "--font-paths", "/usr/share/fonts" }, -- Set Typst compiler arguments (adjust paths as needed)
      })

      -- Add keymaps for preview management
      vim.keymap.set("n", "<leader>tp", ":TypstPreviewToggle<CR>",
        { noremap = true, silent = true, desc = "Toggle Typst Preview" })
      vim.keymap.set("n", "<leader>tc", ":TypstCompile<CR>",
        { noremap = true, silent = true, desc = "Compile Typst File" })
    end,
  },
}

