return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			extend_background_behind_borders = true,
			styles = {
				transparency = true,
			},
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
