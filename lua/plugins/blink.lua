return{
    "saghen/blink.cmp",
    version = "*",
    dependencies = {
        "rafamadriz/friendly-snippets"
    },
    lazy = false,
    opts = {
        completion = {documentation = {auto_show = false,},
        menu = {auto_show_delay_ms = 0,},},
        keymap = {
            preset = "super-tab",
            ["<C-Space>"] = {
                "show",
                "fallback",
            },
        },
        sources = {
            default = {"path" ,"snippets", "buffer" , "lsp"},
            per_filetype = {
                kotlin = { "lsp" },
            },
        },
        cmdline ={
            sources = function ()
                local cmd_type = vim.fn.getcmdtype()
                if cmd_type == "/" then
                    return {"buffer"}
                end
                if cmd_type == ":" then
                    return { "cmdline" }
                end
                return {}
            end,
            keymap = {
                preset = "super-tab"
            },
            completion = {
                menu = {
                    auto_show = true
                }
            }
        }
    },
}

