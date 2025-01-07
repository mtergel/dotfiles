return {
    'b0o/incline.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require('incline').setup()
    end,
}
