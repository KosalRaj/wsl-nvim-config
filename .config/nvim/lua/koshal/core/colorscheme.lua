require("gruvbox").setup({
	contrast = "hard",
	transparent_mode = true,
})

local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
	print("Colorscheme not found!")
	return
end
