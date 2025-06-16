-- lua/stellar/keymaps.lua
local M = {}

function M.setup()
  local map = vim.keymap.set
  local opts = { noremap = true, silent = true }

  -- Leader key
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "

  -- File Explorer
  map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

  -- Save & Quit
  map("n", "<leader>w", ":w<CR>", opts)
  map("n", "<leader>q", ":q<CR>", opts)

  -- Better window navigation
  map("n", "<C-h>", "<C-w>h", opts)
  map("n", "<C-j>", "<C-w>j", opts)
  map("n", "<C-k>", "<C-w>k", opts)
  map("n", "<C-l>", "<C-w>l", opts)

  -- Resize with arrows
  map("n", "<C-Up>", ":resize -2<CR>", opts)
  map("n", "<C-Down>", ":resize +2<CR>", opts)
  map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
  map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

  -- Buffer navigation
  map("n", "<S-l>", ":bnext<CR>", opts)
  map("n", "<S-h>", ":bprevious<CR>", opts)

  -- Clear search
  map("n", "<leader>h", ":nohlsearch<CR>", opts)

  -- LazyGit
  map("n", "<leader>gg", ":LazyGit<CR>", opts)

  -- Git signs
  map("n", "<leader>gp", function() require("gitsigns").preview_hunk() end, opts)
  map("n", "<leader>gb", function() require("gitsigns").blame_line() end, opts)

  -- Telescope
  map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
  map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
  map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
  map("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

  -- Which-key (if loaded)
  local ok, wk = pcall(require, "which-key")
  if ok then
    wk.register({
      ["<leader>"] = {
        e = "Explorer",
        w = "Save",
        q = "Quit",
        h = "No highlight",
        g = {
          name = "Git",
          g = "LazyGit",
          p = "Preview Hunk",
          b = "Blame Line",
        },
        f = {
          name = "Find",
          f = "Find files",
          g = "Live grep",
          b = "Buffers",
          h = "Help",
        },
      },
    })
  end
end

return M

