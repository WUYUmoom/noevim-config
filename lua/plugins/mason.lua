return {
    "mason-org/mason.nvim",
    event = "VeryLazy",
    config = function(_,opts)
        require("mason").setup(opts)
        local registry = require("mason-registry")
        
        local function install_if_missing(name)
            local p = registry.get_package(name)
            if p and not p:is_installed() then
                p:install()
            end
        end

        install_if_missing("kmp-lsp")
        install_if_missing("emmylua_ls")
        install_if_missing("yaml-language-server")


        local ok , blink = pcall(require, "blink.cmp")
        if ok then
            vim.lsp.config("*",{
                capabilities = blink.get_lsp_capabilities(),
            })
        end
        vim.lsp.config("kmp_lsp",{
            cmd = { "kmp-lsp"},
            filetypes = { "kotlin" ,"java","swift" },
            root_markers ={
                "settings.gradle", -- Gradle (multi-project)
		        "settings.gradle.kts", -- Gradle (multi-project)
		        "pom.xml", -- Maven
		        "build.gradle", -- Gradle
		        "build.gradle.kts", -- Gradle
	        	"workspace.json", -- Used to integrate your own build system
            },
            settings = {},
            on_attach = function(_, bufnr)
                vim.lsp.semantic_tokens.enable(true, { bufnr = bufnr })
            end,
        })
        vim.lsp.enable("kmp_lsp")
        vim.lsp.config("emmylua_ls",{
            cmd = { "emmylua_ls" },
            filetypes = { "lua" },
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" ,"" }
                    },
                },
            },
        })
        vim.lsp.enable("emmylua_ls")

        vim.lsp.config("yamlls",{
            cmd = { "yaml-language-server", "--stdio" },
            filetypes = {"yaml"},
            settings = {
                yaml = {schemaAssociations = {}},
            },
        })
        vim.lsp.enable("yamlls")

        vim.diagnostic.config({
            virtual_text = true,
            virtual_lines = false,
            update_in_insert = true,
        })
    end,
}
