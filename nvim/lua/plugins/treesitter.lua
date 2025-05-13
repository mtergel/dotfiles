return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = false,
		build = ":TSUpdate",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			highlight = { enable = true, additional_vim_regex_highlighting = false },
		},
	},
}
