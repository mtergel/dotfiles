return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            highlight = { enable = true, additional_vim_regex_highlighting = false }
        }
    },
}
