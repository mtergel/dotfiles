require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp",
		always_show_bufferline = true,
		show_close_icon = false,
		indicator = {
			-- icon = " ✦",
			style = "none",
		},
		-- separator_style = "padded_slant",
		offsets = {
			{ filetype = "NvimTree", text = " File Explorer", text_align = "left" },
		},
	},
})

vim.keymap.set("n", "<leader>x", "<Cmd>bd<CR>", {})
vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
