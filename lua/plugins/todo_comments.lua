-- init
return {
	{
		"folke/trouble.nvim",
		lazy = true,
		config = function()
			require("trouble").setup({
				position = "bottom", -- position of the trouble list
				height = 10,        -- height of the trouble list when in horizontal mode
				width = 50,         -- width of the list when in vertical mode
				icons = true,       -- use devicons for filenames
				mode = "workspace_diagnostics", -- default mode
				fold_open = "",    -- icon for open folds
				fold_closed = "",  -- icon for closed folds
				group = true,       -- group results by file
				padding = true,     -- add an extra new line on top of the list
			})

			-- Keymap to toggle Trouble
			vim.keymap.set('n', '<leader>xx', ':TroubleToggle<CR>', { noremap = true, silent = true })
		end,
	},
}

