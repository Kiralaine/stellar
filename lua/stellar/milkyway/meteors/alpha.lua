return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
          [[✧˖°.☪︎.𖥔 ݁ ˖☁︎───────────────>Pretty as Luna<─────────────────✧˖°.☪︎.𖥔 ݁ ˖☁︎]],
          [[(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)]],
          [[(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)]],
          [[(\o/) ███████╗████████╗███████╗██╗     ██╗      █████╗ ██████╗   (\o/)]],
          [[(/|\) ██╔════╝╚══██╔══╝██╔════╝██║     ██║     ██╔══██╗██╔══██╗  (/|\)]],
          [[(\o/) ███████╗   ██║   █████╗  ██║     ██║     ███████║██████╔╝  (\o/)]],
          [[(/|\) ╚════██║   ██║   ██╔══╝  ██║     ██║     ██╔══██║██╔══██╗  (/|\)]],
          [[(\o/) ███████║   ██║   ███████╗███████╗███████╗██║  ██║██║  ██║  (\o/)]],
          [[(/|\) ╚══════╝   ╚═╝   ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝  (/|\)]],
          [[(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)(\o/)]],
          [[(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)(/|\)]],
          [[──────────────────────────────────────────────────────────────────────]],
          [["How will you know you can fly if you've never spread your wings?"🕊️✨]],
          [[──────────────────────────────────────────────────────────────────────]]
      }
      vim.api.nvim_set_hl(0, "StellarHeader", { fg = "#cba6f7" }) -- 💜 purple
      dashboard.section.header.opts={
          hl = "StellarHeader",  
          position = "center",

      }

      dashboard.section.buttons.val = {
        dashboard.button("e", "🌆  File Explorer", ":NvimTreeToggle<CR>"),
        dashboard.button("f", "💤  Find File", ":Telescope find_files<CR>"),
        dashboard.button("r", "🌟  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("n", "📃  New File", ":enew<CR>"),
        dashboard.button("L", "🌥️  Lazy", ":Lazy<CR>"),
        dashboard.button("C", "   Config", ":e $HOME/.config/nvim/init.lua<CR>"),
        dashboard.button("q", "🌘  Quit", ":qa<CR>"),
      }
      dashboard.section.footer.val = " \"Everyone is a moon, and has a dark side which he never shows to anybody.\" —Mark Twain."
      dashboard.section.footer.opts={
          hl="StellarHeader",
          position = "center",
      }
      alpha.setup(dashboard.config)
    end
}

