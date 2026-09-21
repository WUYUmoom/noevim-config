return {
    "ALLLLLL703/minecraft-dev.nvim",
    lazy = false,
    main = "minecraft-dev",
    opts = {
        logging = {
            debug = false,
        },
        defaults = {
            nbt = {
                python = "python3",
            },
            translations = {
                order = "ascending",
                default_locale="zh_cn",
                diagnostics = true,
                ource_diagnostics = true,
                ource_scan_max_files =1000,
            },
            metadata = {
                diagnostics = true,
                ource_scan_max_files =1000,
            },
            ource_insight = {
                colors = true,
                vent_diagnostics = true
            },
            ource_generation = {
                ndent =" ",
                ource_root = "src/main/kotlin",
            },
            paper = {
                ersion ="1.21",
                anguage ="java",
            },
            fabric = {
                ersion="1.21.1",
                side ="both",
                se_official_mappings = true,
                use_fabric_api= true,
                plit_sources = true,
                generate_datagen = true,
                use_mixins = true,
                client_mixins = true,
            },
        },

    },
}
