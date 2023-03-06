function ColorMyPencils(color)
	color = color or "everforest"

	-- everforest settings
	vim.cmd([[
	       let g:everforest_background = 'soft'
	       let g:everforest_transparent_background = 2
	       let g:everforest_spell_foreground = 'colored'
	       let g:everforest_diagnostic_text_highlight = 1
	       let g:everforest_diagnostic_virtual_text = 'colored'
	]])

	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils("everforest")
