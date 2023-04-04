M = {}

local Remap = require("plugins.configs.keymaps")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- use jk to exit insert mode
inoremap("jk", "<ESC>l")

-- delete single character without copying into register
nnoremap("x", '"_x')

-- delete without copying into register
nnoremap("<leader>d", '"_d')
vnoremap("<leader>d", '"_d')

-- Open WhichKey
keymap("n", "<C-Space>", "<cmd>WhichKey \\<leader><cr>", opts)

-- greatest remap ever
xnoremap("<leader>p", '"_dP')

-- next greatest remap ever : asbjornHaland
nnoremap("<leader>y", '"+y')
vnoremap("<leader>y", '"+y')
nmap("<leader>Y", '"+Y')

-- Increase and decrease numbers
keymap("n", "<leader>+", "<C-a>", opts)
keymap("n", "<leader>-", "<C-x>", opts)

-- Move lines up and down
nnoremap("<S-Up>", ":m-2<CR>")
nnoremap("<S-Down>", ":m+<CR>")
inoremap("<S-Up>", "<Esc>:m-2<CR>")
inoremap("<S-Down>", "<Esc>:m+<CR>")

-- window management
keymap("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
keymap("n", "<leader>sx", ":close<CR>", opts) -- close current split window

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

nnoremap("<leader>to", ":tabnew<CR>") -- open new tab
nnoremap("<leader>tx", ":tabclose<CR>") -- close current tab
nnoremap("<leader>tn", ":tabn<CR>") --  go to next tab
nnoremap("<leader>tp", ":tabp<CR>") --  go to previous tab

-- vim-maximizer
nnoremap("<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
-- nnoremap("<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- markdown preview keymap
nnoremap("<leader>mp", ":MarkdownPreviewToggle<cr>")

-- undotreetoggle keymap
nnoremap("<leader>u", ":UndotreeToggle<cr>")

-- greatest remap ever
xnoremap("<leader>p", '"_dP')

-- next greatest remap ever : asbjornHaland
nnoremap("<leader>y", '"+y')  -- yanks the current line to the system clipboard
vnoremap("<leader>y", '"+y')  -- yanks the selected text to the system clipboard
nmap("<leader>Y", '"+Y')  -- yanks the current line and all the lines below it to the system clipboard

-- Open Documentation in man
-- TODO: Fix imports
vim.api.nvim_set_keymap("n", "K", ":lua require('user.functions').show_documentation()<CR>", opts)

-- Open little window with files
-- TODO: Not Setup yet
vim.api.nvim_set_keymap(
	"n",
	"<tab>",
	"<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
	opts
)

return M
