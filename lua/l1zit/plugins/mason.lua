return {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"clang",
				"pyright",
				"lua_ls",
                "matlab_ls"
			},
            handlers = {
                lsp.default_setup,
                matlab_ls = function()
                    require('lspconfig').matlab_ls.setup({
                        filetypes = {"matlab"},
                        settings = {
                            matlab = {
                                installPath = "C:/Program Files/MATLAB/R2024a"
                            },
                        },
                        single_file_support = true
                    })
                end,
            },
		})
	end,
}
