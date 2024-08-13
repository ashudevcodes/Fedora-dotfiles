return {
  {
    "folke/which-key.nvim",
    { 'echasnovski/mini.nvim', version = false },
    keys = { "<leader>", "<c-r>", "<c-w>", '"', "'", "`", "c", "v", "g" },
    cmd = "WhichKey",
    config = function(_, opts)
      local wk = require('which-key')
      wk.setup(opts)
      wk.register({ "<leader>f", group = "Find" }, { prefix = "<leader>" })
    end,
  },
}
