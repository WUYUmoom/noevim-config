return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function (_ , _)
        require("nvim-tree").setup({
			sync_root_with_cwd = false, -- 随目录变化自动更新
			update_focused_file = {
				enable = false,
				update_root = true,
			},
			view = {
				width = 30,
				relativenumber = true,
				side = "left",
			},
			renderer = {
				root_folder_label = false, -- 隐藏根目录名称，更简洁
				highlight_diagnostics = "icon", -- 高亮诊断图标
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = false,     -- 禁用 Git 状态图标
						diagnostics = true, -- 启用诊断图标显示
						modified = false, -- 禁用文件修改标记
					},
					diagnostics_placement = "before", -- 诊断图标位置改为 after（文件名后面）
				},
			},
			diagnostics = {
				enable = true,
				icons = {
					error = "✘",
					warning = "▲",
					info = "ℹ",
					hint = "⚑",
				},
			},
			actions = {
				open_file = {
					quit_on_open = false, -- 打开文件后关闭文件树
				},
			},
			git = {
				enable = false, -- 完全禁用 Git 集成功能
			},
		})
    end,
    keys = {
        { "<leader>e", ":NvimTreeToggle<CR>" },
    },
}

