return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    build = "make",
    opts = {
      provider = "openai",
      instructions_file = "avante.md",
      mode = "agentic",
      behaviour = {
        auto_suggestions = false,
        auto_set_keymaps = true,
        auto_approve_tool_permissions = false,
        auto_apply_diff_after_generation = false,
      },
      selector = {
        provider = "native",
      },
      providers = {
        openai = {
          __inherited_from = "openai",
          endpoint = "https://ctoken.top//v1",
          model = "gpt-5.6-terra",
          api_key_name = "AVANTE_OPENAI_API_KEY",
          timeout = 30000,
          extra_request_body = {
            temperature = 0.2,
            max_tokens = 8192,
          },
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown", "Avante" },
        opts = {
          file_types = { "markdown", "Avante" },
        },
      },
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {},
      },
    },
  },
}
