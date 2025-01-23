vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

vim.g.have_nerd_font = true

-- general GUI setup
opt.relativenumber = true
opt.number = true
opt.cmdheight = 2 -- extra space for cmd line
opt.scrolloff = 8
opt.sidescrolloff = 8

-- text editing
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.cursorline = true
opt.wrap = false
opt.conceallevel = 0 -- so that `` is visible in markdown files
opt.smartindent = true
opt.undofile = true
opt.timeoutlen = 300 -- time to wait for a mapped sequence to complete (ms)
opt.updatetime = 250 -- faster completion (4000ms default)
opt.mouse = 'a'
opt.inccommand = "split"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line, or insert mode starting position

--search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- mixed case in search assume case sensitive search

-- turn on termguicolors for color schemes to work
opt.termguicolors = true
opt.background = "dark" -- force dark colorscheme
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- system settings
opt.swapfile = false -- don't create a swap file
opt.writebackup = false -- if a file is being edited by another program

-- add keyword
vim.cmd [[set iskeyword+=-]]
