return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("which-key").setup({
      preset = "helix",  -- ключевой момент — используем классический стиль
      window = {
        border = "rounded",
        position = "bottom",
        margin = {1, 0, 1, 0},
        padding = {1, 2, 1, 2},
        winblend = 10,
      },
      layout = {
        height = {min = 1, max = 6},
        width = {min = 20, max = 50},
        spacing = 6,
        align = "right",
      },
      ignore_missing = true,
      show_help = false,
      show_keys = false,
    })
  end,
}

