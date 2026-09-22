return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    timeout = 150,
    cmdline = {
      enabled = true,
      view = "cmdline_popup",
    },
    views = {
      cmdline_popup = {
        position = {
          row = "50%",
          col = "50%",
        },
        size = {
          width = 60,
          height = "auto",
        },
        border = {
          style = "rounded",
          padding = { 0, 1 },
        },
        win_options = {
          winhighlight = {
            Normal = "NormalFloat",
            FloatBorder = "FloatBorder",
          },
        },
      },
      popupmenu = {
        relative = "editor",

position = {
          row = "50%",
          col = "50%",
        },

size = {
          width = 60,
          height = 10,
        },

border = {
          style = "rounded",
          padding = { 0, 1 },
        },
      },
    },
  },
}
