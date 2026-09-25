-- leader键设置为空格,; as :
vim.g.mapleader = " "
-- 设置撤销
vim.keymap.set({ "n", "i" }, "<C-z>", "<CMD>undo<CR>", { silent = true })

-- 设置反撤销 / 重做
vim.keymap.set({ "n", "i" }, "<C-r>", "<CMD>redo<CR>", { silent = true })

-- 保存和退出
vim.keymap.set({ "n", "i" , "x", "o" }, "<C-s>", "<CMD>wall<CR>")
vim.keymap.set({ "n", "i" , "x", "o" }, "<C-q>", "<CMD>wqall<CR>")
--设置全选
vim.keymap.set({ "n", "x", "o" }, "<C-a>","gg<S-v>G" )
vim.keymap.set( { "n", "x", "o" }, "<leader>ca", vim.lsp.buf.code_action )
--设置lsp格式化代码
vim.keymap.set( { "n", "x", "o" } , "<leader>kn" , "<CMD>lua vim.lsp.buf.format()<CR>")
--     ^
--     u
-- < n   i >
--     e
--     v
--vim.keymap.set({ "n", "x", "o" }, "a", "h")
--vim.keymap.set({ "n", "x", "o" }, "w", "k")
--vim.keymap.set({ "n", "x", "o" }, "s", "j")
--vim.keymap.set({ "n", "x", "o" }, "d", "l")

