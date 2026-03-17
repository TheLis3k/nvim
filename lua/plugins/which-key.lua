return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    wk.add({
      { "<leader>f", group = "Find (Telescope)" },
      { "<leader>v", group = "LSP/Code" },
      { "<leader>c", group = "Config/System" },
    })
  end,
}
