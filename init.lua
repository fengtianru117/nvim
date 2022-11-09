local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local bo = vim.bo

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- opt.whichwrap=""

opt.scrolloff = 8

opt.sidescrolloff = 8

opt.tabstop = 4
bo.tabstop = 4
opt.softtabstop = 4
opt.shiftround = true

vim.opt.guifont = { "MesloLGL Nerd Font", ":h16" }

-- 开启 Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99

vim.o.relativenumber = true
