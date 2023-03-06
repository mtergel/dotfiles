function ColorMyPencils(color)
	color = color or "everforest"

	-- everforest settings
	vim.cmd([[
	    let g:everforest_background = 'hard'
	    let g:everforest_transparent_background = 1
        let g:everforest_better_performance = 1
	]])

	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils("everforest")
