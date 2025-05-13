return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },

	opts = {
		servers = {
			lua_ls = {},
			cssls = {},
			html = {},
			tailwindcss = {},
			ts_ls = {},
		},
	},

	config = function(_, opts)
		local lspconfig = require("lspconfig")

		local on_attach = function(_, bufnr)
			local function map(mode, lhs, rhs, desc)
				vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
			end

			map("n", "K", vim.lsp.buf.hover, "Hover info")
			map("n", "gd", vim.lsp.buf.definition, "Go to definition")
			map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
			map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
			map("n", "gt", vim.lsp.buf.type_definition, "Go to type definition")
			map("n", "gr", vim.lsp.buf.references, "Find references")
			map("n", "gs", vim.lsp.buf.signature_help, "Signature help")
			map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
			map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
			map("n", "g?", function()
				vim.diagnostic.open_float(0)
			end, "Show diagnostics in float")
		end

		for server, config in pairs(opts.servers) do
			-- passing config.capabilities to blink.cmp merges with the capabilities in your
			-- `opts[server].capabilities, if you've defined it
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			config.on_attach = on_attach
			lspconfig[server].setup(config)
		end
	end,
}
