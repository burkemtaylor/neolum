local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--  normal_mode = "n"
--  insert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  term_mode = "t"
--  command_mode = "c"

-- Normal --
-- Better window navigation
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap("n", "<leader>sh", "<C-w>h", { desc = "Split window horizontally" })
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split"  })

keymap("n", "<C-h>", "<C-w>h", { desc = "Move 1 window left" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move 1 window down" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move 1 window up" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move 1 window right" })

-- Uncomment if there are issues with nvim-tree
-- keymap("n", "<leader>e", ":Lex 20<cr>", opts)

keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Take the training wheels off
keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>', opts)
keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>', opts)
keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>', opts)
keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>', opts)

-- Insert --
-- Press jk fast to escape
keymap("i", "jh", "<ESC>", opts)

-- Visual --
-- Stay in indent mode --
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "∆", ":m .+1<CR>==", opts)
keymap("v", "˚", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual block --
-- Move text up and down --
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "∆", ":move '>+1<CR>gv-gv", opts)
keymap("x", "˚", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-w><C-h>", term_opts) -- TODO: fix this
keymap("t", "<C-j>", "<C-w><C-j>", term_opts) -- TODO: fix this
keymap("t", "<C-k>", "<C-w><C-k>", term_opts) -- TODO: fix this
keymap("t", "<C-l>", "<C-w><C-l>", term_opts) -- TODO: fix this



