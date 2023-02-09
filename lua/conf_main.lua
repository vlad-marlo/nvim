local opt = vim.opt
local cmd = vim.cmd

opt.mouse = 'a'
opt.splitright = true
opt.splitbelow = true
opt.so = 999
opt.colorcolumn = '80'
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.showtabline = 2
-- tabs and indentation
cmd([[
filetype indent plugin on
syntax enable
]])
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines
-- colors and colorschemes
opt.termguicolors = true
cmd [[colorscheme gruvbox]]
