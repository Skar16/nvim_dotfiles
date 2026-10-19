-- my neovim dotfiles, there is nothing perfect at this
-- author: skar16
-- date: 2026-10-19
vim.g.mapleader = " "
vim.g.maplocalleader = " "


require("config.options")
require("config.autocmds")
require("config.lazy")   -- plugin manager (lazy.nvim)
require("mappings")
require("plugins")


