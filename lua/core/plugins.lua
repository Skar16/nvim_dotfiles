local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins= {	
{ -- language server
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
},
 "ellisonleao/gruvbox.nvim", -- theme
 "nvim-lualine/lualine.nvim",  -- nice status bar
 "nvim-tree/nvim-web-devicons", -- icons
 "nvim-tree/nvim-tree.lua", -- file managment
 "nvim-treesitter/nvim-treesitter",

 { -- fuzzy find
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = {"nvim-lua/plenary.nvim"}
  },
 "hrsh7th/nvim-cmp", -- auto complet
 "hrsh7th/cmp-nvim-lsp", --auto complte
 "L3MON4D3/LuaSnip", -- Snippets
 "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
 "github/copilot.vim",
"folke/which-key.nvim",

-- testing typst integration
  'kaarmu/typst.vim',
  ft = 'typst',
  lazy=false,

	-- typst preview
'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  version = '0.3.*',
  build = function() require 'typst-preview'.update() end,

}
local opts = { }
require("lazy").setup({plugins, opts})
