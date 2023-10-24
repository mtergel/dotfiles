local icons = require("nvim-web-devicons")

-- local GRAY = "#928374"
--
local GRAY = "#6e6a86"
local new_icons = {}
for key, icon in pairs(icons.get_icons()) do
	icon.color = GRAY
	new_icons[key] = icon
end
icons.set_icon(new_icons)

require("rose-pine").setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = "auto",
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = "main",
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = false,
	disable_italics = false,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = "base",
		background_nc = "_experimental_nc",
		panel = "surface",
		panel_nc = "base",
		border = "highlight_med",
		comment = "muted",
		link = "iris",
		punctuation = "subtle",

		error = "love",
		hint = "iris",
		info = "foam",
		warn = "gold",

		headings = {
			h1 = "iris",
			h2 = "foam",
			h3 = "rose",
			h4 = "gold",
			h5 = "pine",
			h6 = "foam",
		},
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	-- https://github.com/rose-pine/neovim/wiki/Recipes
	highlight_groups = {
		ColorColumn = { bg = "rose", blend = 10 },

		-- Blend colours against the "base" background
		CursorLine = { bg = "foam", blend = 20 },
		StatusLine = { fg = "love", bg = "love", blend = 10 },
		Cursor = { fg = "love", bg = "love" },

		-- By default each group adds to the existing config.
		-- If you only want to set what is written in this config exactly,
		-- you can set the inherit option:
		Search = { bg = "gold", inherit = false },

		TelescopeBorder = { fg = "highlight_high", bg = "none" },
		TelescopeNormal = { bg = "none" },
		TelescopePromptNormal = { bg = "base" },
		TelescopeResultsNormal = { fg = "subtle", bg = "none" },
		TelescopeSelection = { fg = "text", bg = "base" },
		TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
	},
})

-- Set colorscheme after options
vim.cmd("colorscheme rose-pine")

--
-- -- setup
-- require("gruvbox").setup({
-- 	contrast = "hard", -- can be "hard", "soft" or empty string
-- 	transparent_mode = true,
-- 	bold = false,
-- 	overrides = {
-- 		TelescopeResultsBorder = { fg = GRAY, bg = "NONE" },
-- 		TelescopePromptBorder = { fg = GRAY, bg = "NONE" },
-- 		TelescopePreviewBorder = { fg = GRAY, bg = "NONE" },
-- 	},
-- })
--
-- vim.cmd("colorscheme gruvbox")
