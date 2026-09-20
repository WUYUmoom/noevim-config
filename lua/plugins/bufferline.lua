return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {},
    keys = {
        -- 向左打开
        { "<leader>bh", ":BufferLineCyclePrev<CR>",silent = true},
        -- 向右打开
        { "<leader>bl", ":BufferLineCycleNext<CR>",silent = true},
        -- 打开指定窗口
        { "<leader>bp", ":BufferLinePick<CR>", silent = true},
        -- 关闭一个窗口
        { "<leader>bd", ":bdelete<CR>",silent = true},
        -- 
        { "<leader>bo", ":BufferLineCloseOthers<CR>",silent = true},
        { "<leader>bc", ":BufferLinePickClose<CR>", silent = true},
    },
    lazy = false,
}
