return {
    "saghen/blink.cmp",
    version = "*",
    dependencies = "rafamadriz/friendly-snippets",
    
    ---@module "blink.cmp"
    ---@type blink.cmp.Config

    opts = {
        keymap = { 
            preset = "super-tab"
        },

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
            accept = {
                create_undo_point = true,
                resolve_timeout_ms = 100,
                auto_brackets = { 
                    enabled = true,
                    default_brackets = { "(", ")" },
                    override_brackets_for_filetypes = {},
                    kind_resolution = {
                        enabled = true,
                    },
                    semantic_token_resolution = {
                        enabled = true,
                        timeout_ms = 400,
                    },
                }, 
            },
            list = { selection = { preselect = true, auto_insert = false } },
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
