return {
    "saghen/blink.cmp",
    version = "*",
    dependencies = "rafamadriz/friendly-snippets",
    
    ---@module "blink.cmp"
    ---@type blink.cmp.Config

    opts = {
        keymap = { preset = "default" },

        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono"
        },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
            cmdline = {},
        },

        completion = {
            keyword = { range = "full" },
            accept = { auto_brackets = { enabled = false }, },
            list = { selection = { preselect = false, auto_insert = true } },

            menu = {
                auto_show = true,
                draw = {
                    columns = {
                        { "label", "label_description", gap = 1 },
                        { "kind_icon", "kind", gap = 1 }
                    },
                },
            },

            documentation = {
                auto_show = true,
                auto_show_delay_ms = 500
            },

            ghost_text = { enabled },
        },

        snippets = { preset = "default" },

        signature = { enabled = true } ,
    },
    
    opts_extend = { "sources.default" },
}
