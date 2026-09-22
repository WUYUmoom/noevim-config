return{
    "akinsho/toggleterm.nvim",
    version ="*",
    config = function()
        require("toggleterm").setup({
            size =15,
            direction="horizontal",
            close_on_exit = false,
            persist_size = true,
        })
        local Terminal=require("toggleterm.terminal").Terminal
        local gradle_build = Terminal:new({
            cmd ="./gradlew build",
            direction = "horizontal",
            close_on_exit =false,
        })
        local gradle_clean = Terminal:new({
            cmd ="./gradlew clean build",
            direction = "horizontal",
            close_on_exit = false,
        })
        local gradle_run = Terminal:new({
            cmd ="./gradlew runclient",
            direction = "horizontal",
            close_on_exit = false,
        })
        vim.keymap.set("n", "<leader>gb", function()
            gradle_build:toggle()
        end, { desc = "Gradle build" })
        vim.keymap.set("n","<leader>gc", function()
            gradle_clean:toggle()
        end, { desc = "Gradle clean build"})
        vim.keymap.set("n", "<leader>gr", function()
            gradle_run:toggle()
        end,{ desc ="Run Minecraft client" })
        vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>",{
            desc = "Toggle terminal"
        })
    end,
}
