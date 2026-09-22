local M = {}
function M.setup()
  -- 代码语法颜色
  local colors = {
    ["@keyword"] = { fg = "#C678DD" }, -- fun, object, var
    ["@type"] = { fg = "#E5C07B" }, -- 类名
    ["@type.builtin"] = { fg = "#E5C07B" },
    ["@function"] = { fg = "#61AFEF" }, -- 函数
    ["@function.call"] = { fg = "#61AFEF" },
    ["@method"] = { fg = "#61AFEF" },
    ["@property"] = { fg = "#56B6C2" }, -- 属性
    ["@variable"] = { fg = "#E3E3DC" }, -- 变量
    ["@constant"] = { fg = "#D19A66" }, -- 常量
    ["@string"] = { fg = "#98C379" }, -- 字符串
    ["@number"] = { fg = "#D19A66" }, -- 数字
    ["@operator"] = { fg = "#ABB2BF" }, -- 运算符
    ["@punctuation.delimiter"] = { fg = "#ABB2BF" },
    ["@comment"] = { fg = "#7F848E", italic = true },
    -- Kotlin LSP 的语义高亮
    ["@lsp.type.class"] = { fg = "#E5C07B" },
    ["@lsp.type.interface"] = { fg = "#E5C07B" },
    ["@lsp.type.function"] = { fg = "#61AFEF" },
    ["@lsp.type.method"] = { fg = "#61AFEF" },
    ["@lsp.type.property"] = { fg = "#56B6C2" },
    ["@lsp.type.variable"] = { fg = "#E3E3DC" },
    ["@lsp.type.parameter"] = { fg = "#E3E3DC" },
    ["@lsp.type.namespace"] = { fg = "#E5C07B" },
  }
  for group, style in pairs(colors) do
    vim.api.nvim_set_hl(0, group, style)
  end
  -- 彩虹缩进线
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
  -- 当前行灰色背景
  vim.api.nvim_set_hl(0, "CursorLine", {
    bg = "#30343B",
  })
  -- 当前行左侧的行号颜色
  vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = "#E5C07B",
    bold = true,
  })
end
return M
