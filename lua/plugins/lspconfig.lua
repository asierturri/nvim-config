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

        -- Configure the format on save
        local format_on_save = true
        vim.api.nvim_create_user_command("For", function()
            format_on_save = not format_on_save
            print("Format on save: " .. (format_on_save and "Enabled" or "Disabled"))
        end, {})

		local on_attach = function(client, bufnr)
            if client.server_capabilities.documentFormattingProvide and format_on_save then
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = vim.api.nvim_create_augroup("Format", { clear = true }),
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format()
					end,
				})
            else
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false
			end
		end

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- Configure the language servers
		nvim_lsp.matlab_ls.setup({
			cmd = { "matlab-language-server", "--stdio" },
			on_attach = on_attach,
			capabilities = capabilities,
			filetypes = { "matlab" },
			root_dir = nvim_lsp.util.root_pattern(".git", "*.prj", "*.m"),
			settings = {
				MATLAB = {
					indexWorkspace = true,
					installPath = "C:/Program Files/MATLAB/R2024b",
					matlabConnectionTiming = "onStart",
					telemetry = true,
				},
			},
		})

        nvim_lsp.clangd.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            filetypes = { "c" },
        })
	end,
}
