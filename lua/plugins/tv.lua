 return {
     "alexpasmantier/tv.nvim",
     event = "VeryLazy",
     opts = {
         global_keybindings ={
             --打开频道选择器
             channels ="<leader>tv",
         },
         --Neovim里的浮窗外观
         layout ="landscape",
         window = {
            width =0.8,
            height=0.8,
            border = "rounded",
            title = "tv.nvim",
            title_pos = "center",
         },
         --频道快捷键
         channels = {
             files = {
                 --搜索文件
                 keybinding ="<leader>tf",
             },
             text = {
                 --搜索文件内容 
                 keybinding="<leader>tg",
             },
             ["git-log"] = {
                 --查看 Git 提交记录
                 keybinding="<leader>tl",
             },
         },
         quickfix = {
             auto_open = true,
         },
     },

 }
