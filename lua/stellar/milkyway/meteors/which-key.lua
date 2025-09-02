return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("which-key").setup({
      preset = "helix", -- still fine
      win = {
        border = "rounded",
        position = "bottom",
        margin = { 1, 0, 1, 0 },
        padding = { 1, 2, 1, 2 },
        winblend = 10,
      },
      layout = {
        height = { min = 1, max = 6 },
        width = { min = 20, max = 50 },
        spacing = 6,
        align = "right",
      },
      filter = function()
        return true -- equivalent of old ignore_missing = true
      end,
      show_help = false,
      show_keys = false,
    })
  end,
}

