function ColorMyPencils(color)
	color = color or "everforest"

	-- everforest settings
	vim.cmd([[
	    let g:everforest_background = 'hard'
	    " let g:everforest_transparent_background = 1
	]])

	vim.cmd.colorscheme(color)

	-- transparent background
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils("everforest")
