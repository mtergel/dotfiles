return {
    "neovim/nvim-lspconfig",
    dependencies = { 'saghen/blink.cmp' },
    event = { "BufReadPre", "BufNewFile" },
    opts = function()
        -- Keybinds
        local keymap = vim.keymap
        local keymap_opts = { noremap = true, silent = true }
        -- The 'on_attach' function that sets up key mappings after the LSP is attached
        local on_attach = function(_, bufnr)
            keymap_opts.buffer = bufnr

            keymap_opts.desc = "Show LSP definitions"
            keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", keymap_opts)

            keymap_opts.desc = "Go to declaration"
            keymap.set("n", "gD", vim.lsp.buf.declaration, keymap_opts)

            keymap_opts.desc = "See references"
            keymap.set("n", "gR", "<cmd>Telescope lsp_references<cr>", keymap_opts)

            keymap_opts.desc = "See implementation"
            keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", keymap_opts)

            keymap_opts.desc = "See type definition"
            keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", keymap_opts)

            keymap_opts.desc = "See code actions"
            keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, keymap_opts)

            keymap_opts.desc = "Smart rename"
            keymap.set("n", "<leader>rn", vim.lsp.buf.rename, keymap_opts)

            keymap_opts.desc = "See line diagnostics"
            keymap.set("n", "g?", "<cmd>lua vim.diagnostic.open_float(0)<cr>", keymap_opts)
        end

        local ret = {
            diagnostics = {
                underline = true,
                update_in_insert = false,
                virtual_text = {
                    spacing = 4,
                    source = "if_many",
                    prefix = "●",
                },
                severity_sort = true,
            },
            inlay_hints = {
                enabled = true,
            },
            servers = {
                lua_ls = {
                },
                rust_analyzer = {
                    refreshSupport = {
                        refreshSupport = false,
                    }
                },
                ts_ls = {
                },
                tailwindcss = {
                    tailwindCSS = {
                        experimental = {
                            classRegex = {
                                { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                            },
                        },
                    },
                },
                ruby_lsp = {
                },
            },
            setup = {
                -- Add specific server setup functions if needed
            },
            on_attach = on_attach
        }
        return ret
    end,
    config = function(_, opts)
        local lsp = require("lspconfig")
        local servers = opts.servers

        -- Function to setup each server
        local function setup(server, server_opts)
            if opts.setup[server] then
                if opts.setup[server](server) then
                    return
                end
            elseif opts.setup["*"] then
                if opts.setup["*"](server, server_opts) then
                    return
                end
            end

            lsp[server].setup(server_opts)
        end

        -- Iterate over servers and setup each one
        for server, config in pairs(servers) do
            config.on_attach = opts.on_attach
            setup(server, config)
        end
    end,
}
