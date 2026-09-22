-- 关闭底部状态栏
vim.o.laststatus = 0
-- 开启左侧数字
vim.o.number = true
-- 使用相对数
vim.o.relativenumber = false
-- 高亮当前行
vim.o.cursorline = true
-- 开启鼠标
vim.o.mouse = 'a'
-- 自动缩进
vim.o.smartindent = true
-- 100毫秒没有输入文件将会自动保存交换文件
vim.o.updatetime = 150
-- 开启颜色
vim.o.termguicolors = true
-- 设置代码长度提示
--vim.opt.colorcolumn = "100"
-- tab转为空格
vim.opt.expandtab = true
-- 设置tab的空格数量
vim.opt.tabstop = 4
-- 设置开头空格为0
vim.opt.shiftwidth  = 0

-- 保存修改历史
vim.o.swapfile = true
vim.o.undofile = true
-- 开启高亮复制
vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank()]])
-- 设置外部打开同步
vim.opt.autoread = true

