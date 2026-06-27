return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },

    config = function()
        require("mason").setup()

        -- =================
        -- LSP SERVERS
        -- =================
        require("mason-lspconfig").setup({
            ensure_installed = {
                "clangd",
                "lua_ls",
            },
        })

        -- =====================
        -- FORMATERS / LINTERS
        -- =====================
        require("mason-tool-installer").setup({
            ensure_installed = {
                "clang-format",
                "stylua",
            },
            auto_update = true,
            run_on_start = true,
        })
    end,
}
