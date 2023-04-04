-- Using setup function with default values
require("react-extract").setup({
	ts_template_before = "const [COMPONENT_NAME] = ([PROPERTIES]) => {\n\n[INDENT]return (\n",
	ts_template_after = "[INDENT]);\n}\n\n\nexport default [COMPONENT_NAME];",
})

vim.keymap.set({ "v" }, "<Leader>rne", require("react-extract").extract_to_new_file)

vim.keymap.set({ "v" }, "<Leader>rce", require("react-extract").extract_to_current_file)
