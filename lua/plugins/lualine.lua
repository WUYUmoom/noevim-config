return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    opts = {
        options = {
            theme = "auto",
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        },
        extensions = { "nvim-tree" },
        sections = {
            lualine_a = {'mode'}, -- 当前的 mode
            lualine_b = {'branch', 'diff', 'diagnostics'}, -- 所在的 git branch、git diff 信息（多少修改、多少增添等）、诊断信息数量
            lualine_c = {'filename'}, -- 文件名
            lualine_x = {'encoding', 'fileformat', 'filetype'}, -- 文件编码、文件的 <EOL>（可以通过 :h file-formats 查看）、文件类型
            lualine_y = {'progress'}, -- 当前所在行数占总行数的百分比
            lualine_z = {'location'} -- 当前所在的行数和列数
            
        },
    },
}

