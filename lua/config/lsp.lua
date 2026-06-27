local function on_attach(_, bufnr)
    local map = function(mode, lhs, rhs)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true })
    end

    -- basic navegation
    map("n", "gd", vim.lsp.buf.definition)
    map("n", "gr", vim.lsp.buf.references)
    map("n", "K", vim .lsp.buf.hover)
    map("n", "<leader>rn", vim.lsp.buf.rename)
    map("n", "<leader>ca", vim.lsp.buf.code_action)
end

-- ====================================
--  CAPABILITIES (blink compatible)
-- ====================================
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- if blink is isntaled, extends it automatically
pcall(function()
    capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)
end)


-- ====================================
-- DIAGNOSTICS
-- ====================================
vim.diagnostic.config({
    virtual_text = true,
    underline = true,
    signs = true,
    update_in_insert = false,
    severity_sort = true,
})


-- ====================================
-- CLANGD
-- ====================================
vim.lsp.config["clangd"] = {
    cmd = { 
        "clangd",
        "--background-index",
        "--clang-tidy",
        "--completion-style=detailed",
    },
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
    root_markers = { 
        "compile_commands.json",
        "CMakeLists.txt",
        ".git",
    },
}

vim.lsp.enable("clangd")


-- ====================================
-- GODOT (GDScript LSP)
-- ====================================
vim.lsp.config["gdscript"] = {
    name = "godot",
    cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
	root_markers = { "project.godot"},
}

vim.lsp.enable("gdscript")

