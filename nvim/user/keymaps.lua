
-- +--------------------+ --
-- |       Notice!      | --
-- +--------------------+ --

-- 1. !Don't forget enter<Esc> to operate multi-lines in visual block mode!
-- 2. "n" type:bvw can clike the word block including punciuation 


local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- +--------------+ --
-- |    Normal    | --
-- +--------------+ --

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<leader>j", ":bnext<CR>", opts)
keymap("n", "<leader>k", ":bprevious", opts)

-- quickly operate files
keymap("n", "<leader>s", ":wq<CR>", opts)
keymap("n", "<leader>n", ":enew<CR>", opts)
keymap("n", "<leader>q", ":q!<CR>", opts)

-- quickly go to ",',(),{},[],<> tags
keymap("n", "bb", "vib", opts)

-- add empty lines below the current line
keymap("n", "nn", "o<ESC>", opts)

-- jump to matching grouping symbols
keymap("n", "[", "<S-%>", opts)
-- +--------------+ --
-- |    Insert    | --
-- +--------------+ --

-- Press jk == <ESC>
keymap("i", "jk", "<ESC>", opts)

-- remove cursor by hjkl 
keymap("i", "<C-h>", "<ESC>ha", opts)
keymap("i", "<C-j>", "<ESC>ja", opts)
keymap("i", "<C-k>", "<ESC>ka", opts)
keymap("i", "<C-l>", "<ESC>la", opts)


-- +--------------+ --
-- |    Visual    | --
-- +--------------+ --

-- Press jk == <ESE>
keymap("v", "jk", "<ESC>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)


-- +--------------------+ --
-- |    Visual Block    | --
-- +--------------------+ --

-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)










