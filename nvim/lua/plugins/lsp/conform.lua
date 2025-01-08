return {
    'stevearc/conform.nvim',
    dependencies = { "mason.nvim" },
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    keys = {
        {
            "<leader>fm",
            function()
                require("conform").format({ formatters = {}, lsp_fallback = true, timeout_ms = 3000 })
            end,
            mode = { "n", "v" },
            desc = "Format Injected Langs",
        },
    },
    opts = {},
}
