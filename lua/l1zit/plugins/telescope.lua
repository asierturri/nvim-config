return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup()

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<Space>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<Space>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find recent files" })
        keymap.set("n", "<Space>fb", "<cmd>Telescope buffers<cr>", { desc = "Find string in cwd" })
        keymap.set("n", "<Space>fs", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
        keymap.set("n", "<Space>fc", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })
    end,
}
