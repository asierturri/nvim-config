return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local nvim_lsp = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")

		local protocol = require("vim.lsp.protocol")

		local on_attach = function(client, bufnr)
			if client.server_capabilities.socumentFormattingProvider then
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = vim.api.nvim_create_augroup("Format", { clear = true }),
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format()
					end,
				})
			end
		end

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		mason_lspconfig.setup_handlers({
			function(server)
				nvim_lsp[server].setup({
					capabilities = capabilities,
					on_attach = on_attach,
				})
			end,
		})

		nvim_lsp.matlab_ls.setup({
			cmd = { "matlab-language-server", "--stdio" },
			on_attach = on_attach,
			capabilities = capabilities,
			filetypes = { "matlab" },
			root_dir = nvim_lsp.util.root_pattern(".git", "*.prj", "*.m"),
			settings = {
				MATLAB = {
					indexWorkspace = true,
					installPath = "C:/Program Files/MATLAB/R2024a",
					matlabConnectionTiming = "onStart",
					telemetry = true,
				},
			},
		})

		nvim_lsp.yamlls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			filetypes = { "yaml" },
		})

		nvim_lsp.zls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			filetypes = { "zig" },
		})
	end,
}
