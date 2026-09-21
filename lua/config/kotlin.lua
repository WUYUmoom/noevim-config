local function package_from_path(path)
  path = path:gsub("\\", "/")
  local marker = "/src/main/kotlin/"
  local start = path:find(marker, 1, true)
  if not start then
    return nil
  end
  local relative = path:sub(start + #marker)
  local package_path = relative:match("^(.*)/[^/]+%.kt$")
  if not package_path then
    return ""
  end
  return package_path:gsub("/", ".")
end

local function apply_kotlin_template(bufnr)
  if vim.b[bufnr].kotlin_template_applied then
    return
  end

local path = vim.api.nvim_buf_get_name(bufnr)

if path == "" then
    return
  end

local package_name = package_from_path(path)

if package_name == nil then
    return
  end

local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)

if #lines ~= 1 or lines[1] ~= "" then
    return
  end

local class_name = vim.fn.fnamemodify(path, ":t:r")

if class_name == "" then
    return
  end

local content = {}

if package_name ~= "" then
    table.insert(content, "package " .. package_name)
    table.insert(content, "")
  end

table.insert(content, "class " .. class_name .. " {")
  table.insert(content, "}")

vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, content)

vim.b[bufnr].kotlin_template_applied = true
end

local group = vim.api.nvim_create_augroup("KotlinAutoTemplate", {
  clear = true,
})

vim.api.nvim_create_autocmd({
  "BufNewFile",
  "BufReadPost",
}, {
  pattern = "*.kt",
  group = group,
  callback = function(args)
    vim.schedule(function()
      if vim.api.nvim_buf_is_valid(args.buf) then
        apply_kotlin_template(args.buf)
      end
    end)
  end,
})
