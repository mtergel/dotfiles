require("nvim-tree").setup({
	view = {
		relativenumber = true,
	},
	git = {
		ignore = false,
	},
})

vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>", {})
