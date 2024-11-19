return {
	{
		"L3MON4D3/LuaSnip",
		lazy = true,
		config = function()
			local luasnip = require("luasnip")

			-- Configure LuaSnip to load snippets from a custom folder
			require("luasnip.loaders.from_lua").lazy_load({
				paths = "~/.config/nvim/lua/snippets",
			})

			-- Enable snippet management
			luasnip.config.set_config({
				history = true, -- Keep a history of used snippets
				updateevents = "TextChanged,TextChangedI", -- Update snippets as you type
				enable_autosnippets = true, -- Automatically trigger snippets
			})

			-- Keymaps for snippet navigation
			vim.keymap.set({ "i", "s" }, "<C-k>", function()
				if luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				end
			end, { silent = true })

			vim.keymap.set({ "i", "s" }, "<C-j>", function()
				if luasnip.jumpable(-1) then
					luasnip.jump(-1)
				end
			end, { silent = true })

			vim.keymap.set("i", "<C-l>", function()
				if luasnip.choice_active() then
					luasnip.change_choice(1)
				end
			end, { silent = true })
		end,
	},
}

