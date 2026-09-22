require("core.basic")
-- 基本键盘映射
require("core.keymap")
require("core.lazy")
require("config.kotlin")
require("config.colors").setup()
vim.api.nvim_create_autocmd("ColorScheme",{
    callback = function()
        require("config.colors").setup()
    end,
})
