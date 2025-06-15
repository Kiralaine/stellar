
local opt = vim.opt
local theme = "catppuccin"

opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.termguicolors = true
opt.scrolloff = 8
opt.signcolumn = "yes"
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    vim.cmd.colorscheme(theme)  -- ☑️ можно заменить на tokyonight, nord, catppuccin
  end,
})

