return {
    'stevearc/conform.nvim',
    dependencies = { "mason.nvim" },
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    keys = {
        {
            "<leader>fm",
            function()
                require("conform").format({ async = true, lsp_fallback = true, timeout_ms = 3000 })
            end,
            mode = { "n", "v" },
            desc = "Format Injected Langs",
        },
    },
    opts = {
        formatters_by_ft = {
            javascript = { "prettier" },
            typescript = { "prettier" },
            javascriptreact = { "prettier" },
            typescriptreact = { "prettier" },
            json = { "prettier" },
            jsonc = { "prettier" },
            ruby = { "rubocop" },
            eruby = { "erb_format" },
        }
    },
}
