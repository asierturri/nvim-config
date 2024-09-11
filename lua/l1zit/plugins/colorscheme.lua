return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("colorscheme gruvbox")
        vim.g.gruvbox_contrast_dark = "soft"
    end,
}
