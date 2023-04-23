local lsp = require("lsp-zero").preset({
	manage_nvim_cmp = {
		set_sources = "lsp",
		set_basic_mappings = true,
		set_extra_mappings = true,
		use_luasnip = true,
		set_format = true,
		documentation_window = true,
	},
})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })

	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end)
	vim.keymap.set("n", "<leader>vca", function()
		vim.lsp.buf.code_action()
	end)
	vim.keymap.set("n", "<leader>vrr", "<cmd>Telescope lsp_references<cr>")
	vim.keymap.set("n", "<leader>vri", "<cmd>Telescope lsp_implementations<cr>")
	vim.keymap.set("n", "<leader>vrn", function()
		vim.lsp.buf.rename()
	end)
end)

require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

lsp.set_sign_icons({
	error = "✘",
	warn = "▲",
	hint = "⚑",
	info = "»",
})

lsp.setup()

-- completion
local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "luasnip" },
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		fields = { "abbr", "kind", "menu" },
		format = require("lspkind").cmp_format({
			mode = "symbol", -- show only symbol annotations
			maxwidth = 50, -- prevent the popup from showing more than provided characters
			ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
		}),
	},
	mapping = {
		-- `Enter` key to confirm completion
		["<CR>"] = cmp.mapping.confirm({ select = false }),

		-- Ctrl+Space to trigger completion menu
		["<C-Space>"] = cmp.mapping.confirm(),

		-- Navigate between snippet placeholder
		["<C-f>"] = cmp_action.luasnip_jump_forward(),
		["<C-b>"] = cmp_action.luasnip_jump_backward(),
	},
})

-- formating
local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- Here you can add tools not supported by mason.nvim
	},
})

require("mason-null-ls").setup({
	ensure_installed = nil,
	automatic_installation = false,
	handlers = {
		-- Here you can add functions to register sources.
		-- See https://github.com/jay-babu/mason-null-ls.nvim#handlers-usage
		--
		-- If left empty, mason-null-ls will  use a "default handler"
		-- to register all sources
	},
})
