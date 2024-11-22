return {
	{
		"chomosuke/typst-preview.nvim",
		lazy = false, -- or use ft = 'typst' to load the plugin only for Typst files
		version = "1.*",
		config = function()
			require("typst-preview").setup({})
			-- vim.keymap.set("n", "<leader>tp", ":TypstPreview<CR>", { desc = "Open Typst Preview" })
		end,
	},
}
