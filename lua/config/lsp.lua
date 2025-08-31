local function on_attach(client, bufnr)
	local opts = { noremap = true, silent = true }
	local buf_set_keymap = vim.api.nvim_buf_set_keymap

    buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config["clangd"] = {
    cmd = { "clangd" },
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto","hpp"},
    root_markers = { ".git", "*.c", "*.h" },
}
vim.lsp.enable("clangd")

vim.lsp.config["gdscript"] = {
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "gd", "gdscript" },
	root_markers = { "project.godot", ".git" },
}
vim.lsp.enable("gdscript")

vim.lsp.config["clangd"] = {
    cmd = { "clangd" },
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "c", "cpp", ".h", ".hpp"},
    root_markers = { ".git", "*.c", "*.cpp", "*.h", "*.hpp" },
};
vim.lsp.enable("clangd")

vim.diagnostic.config({
    virtual_text = true,
    underline = true,
    signs = true,
    update_in_insert = false,
})
