return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			disable_float_background = true,
			disable_background = true,
			dim_nc_background = false,
			highlight_groups = {
				TelescopeNormal = { bg = "none" },
				TelescopeBorder = { bg = "none" },
				TelescopeTitle = { bg = "none", fg = "iris" },
				TelescopePreviewTitle = { bg = "iris", fg = "base" },
				TelescopeResultsTitle = { fg = "iris" },
			},
		})
		vim.cmd([[colorscheme rose-pine]])
	end,
}
