-- init, check if not already implemented by other plugin
--
return {
	{
		"folke/todo-comments.nvim",
		lazy = true,
		dependencies = { "nvim-lua/plenary.nvim" }, -- Ensure plenary is loaded
		config = function()
			require("todo-comments").setup({
				signs = true,      -- show icons in the signs column
				keywords = {
					FIX = {
						icon = " ", -- icon used for the FIX keyword
						color = "error", -- can be a hex color, or a named color
						alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- alternative keywords
					},
					TODO = { icon = " ", color = "info" },
					HACK = { icon = " ", color = "warning" },
					WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
					PERF = { icon = " ", color = "performance", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
					NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
				},
				highlight = {
					before = "fg", -- "fg" or "bg" or empty
					keyword = "wide", -- "wide" or "bg" or "fg" or empty
					after = "fg", -- "fg" or "bg" or empty
				},
			})

			-- Keymap to open Todo Quickfix
			vim.keymap.set('n', '<leader>td', ':TodoTrouble<CR>', { noremap = true, silent = true })
		end,
	},
}

