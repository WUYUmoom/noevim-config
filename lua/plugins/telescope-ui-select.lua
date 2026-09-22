return {
  "nvim-telescope/telescope-ui-select.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      extensions = {
        ["ui-select"] = require("telescope.themes").get_dropdown({
          previewer = false,
          winblend = 10,
          layout_config = {
            width = 0.6,
            height = 0.4,
          },
        }),
      },
    })
    telescope.load_extension("ui-select")
  end,
}
