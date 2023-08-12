local icons = require("nvim-web-devicons")

local GRAY = "#928374"

local new_icons = {}
for key, icon in pairs(icons.get_icons()) do
	icon.color = GRAY
	new_icons[key] = icon
end
icons.set_icon(new_icons)

-- setup
require("gruvbox").setup({
	contrast = "hard", -- can be "hard", "soft" or empty string
	transparent_mode = true,
	overrides = {
		TelescopeResultsBorder = { fg = GRAY, bg = "NONE" },
		TelescopePromptBorder = { fg = GRAY, bg = "NONE" },
		TelescopePreviewBorder = { fg = GRAY, bg = "NONE" },
		BufferLineSeparator = { fg = GRAY },
	},
})

vim.cmd("colorscheme gruvbox")
