return {
    "AlexandrosAlexiou/kotlin.nvim",
    ft ={"kotlin"},
    dependencies ={
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "stevearc/oil.nvim",
        "folke/trouble.nvim",
    },
    config = function()
        require("kotlin").setup({
            root_markers ={
                "gradlew",
                "settings.gradle",
                "settings.gradle.kts",
                "build.gradle",
                "build.gradle.kts",
                "pom.xml",
                ".git",
            },
            jdk_for_symbol_resolution = nil,
            jvm_args = {
                "-Xmx5g"
            },
            build_tool = "gradle",
            inlay_hints = {
                enabled = true,
            },
            folding = {
                enabled = true,
            },
            java_files = true,
            reload_workspace ={
                on_build_file_save ="ask",
            },
        })
    end,
}
