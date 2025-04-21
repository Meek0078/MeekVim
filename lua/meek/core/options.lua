vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4 -- spaces
opt.shiftwidth = 4 -- spaces for indent width
opt.expandtab = true -- expant tab to spaces

opt.wrap = false -- set line wrap

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- enable case sensitivity when searching mixed

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" -- show sign column so the text doesnt shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- uses system clipboard as default register

-- splitting windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

