return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
						disable = { "different-requires" },
					},
				},
			},
		})
		lspconfig.gopls.setup({
			settings = {
				gopls = {
					analyses = {
						unusedparams = true,
					},
					staticcheck = true,
					gofumpt = true,
				},
			},
		})
		lspconfig.clangd.setup({
			name = "clangd",
			cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
			initialization_options = {
				fallback_flags = { "-std=c++17" },
			},
		})
	end,
}