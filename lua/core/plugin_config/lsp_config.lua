--init LSP
--
require("mason").setup()
require('mason-lspconfig').setup(
	{

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
--ensure_installed= { 'lua_lsp' }

ensure_installed= { 'typst_lsp', 'lua_ls', 'matlab_ls','pylsp' }

-- ensure_installed= { 'typst_lsp', 'lua_ls', 'grammarly' }
--ensure_installed= { 'alex' } --markdown

-- added grammarly_lsp for markdown support)

--require("lspconfig").lua_ls.setup{}
}
)

--local lspconfig = require('lspconfig')


local on_attach = function(_, _)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename,{})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action,{})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition,{})
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation,{})
vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references,{})
vim.keymap.set('n', 'K', vim.lsp.buf.hover,{})
end






--local capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')



require("lspconfig").lua_ls.setup({
on_attach = on_attach,
capabilities = capabilities,
})
require("lspconfig").typst_lsp.setup({
on_attach = on_attach,
capabilities = capabilities,
})
