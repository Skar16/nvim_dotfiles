return {
	{
		"folke/which-key.nvim",
		lazy = true,
		config = function()
			local wk = require("which-key")

			wk.setup({
				plugins = {
					marks = true,       -- shows a list of your marks on ' and `
					registers = true,   -- shows your registers on " in NORMAL or <C-r> in INSERT mode
					spelling = {
						enabled = true, -- enabling this will show WhichKey when pressing z= to correct spelling
						suggestions = 20, -- how many suggestions should be shown in the list?
					},
				},
				window = {
					border = "rounded", -- none, single, double, shadow
					position = "bottom", -- bottom, top
					margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
					padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
				},
			})

			-- Register custom keybinding explanations
			wk.register({
				["<leader>"] = {
					f = {
						name = "FuzzyFind", -- Create a group name for file-related commands
						s = { "<leader>", "search files" },
						r = { "<f>", "live grep" },
					},
					name = "Leader",
					["<leader>"] = { ":Telescope find files (CR)", "Fuzzy find files" },
					-- g = {
					-- 	name = "Git", -- Group name for Git commands
					-- 	s = { ":Git status<CR>", "not implemented" },
					-- 	p = { ":Git push<CR>", "Git Push" },
					-- },
					-- h = {
					-- 	name = "Help",
					-- 	k = { ":WhichKey<CR>", "not implemented" },
					-- },
				},
			})
			-- wk.register({
			-- 	["<leader>"] = {
			--
			-- 	},
			-- })
		end,
	},
}

