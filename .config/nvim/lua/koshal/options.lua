local options = {
	-- line numbers
	relativenumber = true, -- set relative numbered lines
	number = true, -- set numbered lines
	numberwidth = 4, -- set number column width to 2 {default 4}

	-- tabs & indentation
	tabstop = 2, -- insert 2 spaces for a tab
	shiftwidth = 2, -- the number of spaces inserted for each indentation
	expandtab = true, -- convert tabs to spaces
	autoindent = true, -- copy indent from current line when starting new one
	smartindent = true, -- make indenting smarter again

	-- line wrapping
	wrap = false, -- display lines as one long line

	-- search settings
	hlsearch = true, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	smartcase = true, -- if you include mixed case in your search, assumes you want case-sensitive
	
	-- cursor line
	cursorline = true, -- highlight the current line
	
	-- appearance
	termguicolors = true, -- set term gui colors (most terminals support this)
	background = "dark", -- colorschemes that can be light or dark will be made dark
	signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time

	-- backspace
	backspace = "indent,eol,start",

	-- split windows
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window

	-- undo and redo history
	swapfile = false, -- creates a swapfile
	backup = false, -- creates a backup file
	undofile = true, -- enable persistent undo
	undodir = os.getenv("HOME") .. "/.vim/undodir",

	cmdheight = 1, -- more space in the neovim command line for displaying messages
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, -- so that `` is visible in markdown files
	fileencoding = "utf-8", -- the encoding written to a file
	mouse = "a", -- allow the mouse to be used in neovim
	pumheight = 10, -- pop up menu height
	showmode = false, -- we don't need to see things like -- INSERT -- anymore
	showtabline = 1, -- always show tabs
	timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
	updatetime = 0, -- faster completion (4000ms default)
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	laststatus = 3,
	showcmd = false,
	ruler = false,
	scrolloff = 8, -- is one of my fav
	sidescrolloff = 8,
	guifont = "monospace:h17", -- the font used in graphical neovim applications
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.iskeyword:append("-") -- consider string-string as whole wordptions
vim.opt.isfname:append("@-@")
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
