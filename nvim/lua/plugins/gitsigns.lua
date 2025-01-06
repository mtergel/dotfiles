return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local keymap = vim.keymap
        require("gitsigns").setup({
            on_attach = function(_, bufnr)
                local gs = require("gitsigns")
                local opts = { expr = true, silent = true, buffer = bufnr }
                opts.desc = "Go to next hunk"
                keymap.set("n", "[c", function()
                    if vim.wo.diff then
                        return "]c"
                    end
                    vim.schedule(function()
                        gs.next_hunk()
                    end)
                    return "<Ignore>"
                end, opts)

                opts.desc = "Go to prev hunk"
                keymap.set("n", "]c", function()
                    if vim.wo.diff then
                        return "[c"
                    end
                    vim.schedule(function()
                        gs.prev_hunk()
                    end)
                    return "<Ignore>"
                end, opts)
            end,
        })
    end,
}
