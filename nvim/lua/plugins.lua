return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				compile = false,
				transparent = true,
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
					},
				},
				-- overrides = function(colors)
				-- 	local theme = colors.theme
				-- 	return {
				-- 		NormalFloat = { bg = "none" },
				-- 		FloatBorder = { bg = "none" },
				-- 		FloatTitle = { bg = "none" },
				--
				-- 		-- Save an hlgroup with dark background and dimmed foreground
				-- 		-- so that you can use it where your still want darker windows.
				-- 		-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
				-- 		NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
				--
				-- 		-- Popular plugins that open floats will link to NormalFloat by default;
				-- 		-- set their background accordingly if you wish to keep them dark and borderless
				-- 		LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
				-- 		MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
				--
				-- 		TelescopeTitle = { fg = theme.ui.special, bold = true },
				-- 		TelescopePromptNormal = { bg = theme.ui.bg_p1 },
				-- 		TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
				-- 		TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
				-- 		TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
				-- 		TelescopePreviewNormal = { bg = theme.ui.bg_dim },
				-- 		TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
				--
				-- 		Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
				-- 		PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
				-- 		PmenuSbar = { bg = theme.ui.bg_m1 },
				-- 		PmenuThumb = { bg = theme.ui.bg_p2 },
				-- 	}
				-- end,
				theme = "wave",
			})

			vim.cmd("colorscheme kanagawa")
		end,
	},
	{
		"sainnhe/everforest",
		lazy = true,
		config = function()
			vim.cmd([[
	            let g:everforest_background = 'hard'
	            let g:everforest_transparent_background = '2'
	            let g:everforest_diagnostic_text_highlight = '1'
	            let g:everforest_diagnostic_virtual_text = 'colored'
	            let g:everforest_better_performance = '1'
	        ]])
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-treesitter/nvim-treesitter",
	},
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup()
		end,
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"jay-babu/mason-null-ls.nvim",
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" }, -- Optional
			{ "hrsh7th/cmp-path" }, -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" }, -- Optional
			{ "onsails/lspkind.nvim" }, -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			-- char = "▏",
			char = "│",
			filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
			show_trailing_blankline_indent = false,
			show_current_context = false,
		},
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	{
		"stevearc/dressing.nvim",
		lazy = true,
		event = "VeryLazy",
	},
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	-- icons
	{ "nvim-tree/nvim-web-devicons", lazy = true },
}
