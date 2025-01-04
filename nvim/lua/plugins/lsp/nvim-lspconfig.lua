return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    opts = function()
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
                    -- Add specific options for lua_ls if needed
                },
            },
            setup = {
                -- Add specific server setup functions if needed
            },
        }
        return ret
    end,
    config = function(_, opts)
        local lsp = require("lspconfig")
        local servers = opts.servers

        -- Function to setup each server
        local function setup(server)
            local server_opts = vim.tbl_deep_extend("force", {
                capabilities = vim.deepcopy(capabilities),
            }, servers[server] or {})

            if server_opts.enabled == false then
                return
            end

            if opts.setup[server] then
                if opts.setup[server](server, server_opts) then
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
        for server in pairs(servers) do
            setup(server)
        end
    end,
}
