require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp",
		always_show_bufferline = false,
		show_close_icon = false,
		offsets = {
			{
				filetype = "NvimTree",
				text = " File Explorer",
				highlight = "Directory",
				separator = true,
				text_align = "left",
			},
			{
				filetype = "neo-tree",
				text = " File Explorer",
				highlight = "Directory",
				separator = true,
				text_align = "left",
			},
		},
	},
})

vim.keymap.set("n", "<leader>x", "<Cmd>bp|bd #<CR>", {})
vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
