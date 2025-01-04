return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' } },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
        { "<leader>fw", "<cmd>Telescope live_grep<cr>",  desc = "Grep text" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "Buffers" },
        { "<leader>fo", "<cmd>Telescope oldfiles<cr>",   desc = "Old files" }
    }
}
