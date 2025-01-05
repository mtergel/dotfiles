return {
    "nvim-lualine/lualine.nvim",
    init = function()
        vim.g.lualine_laststatus = vim.o.laststatus
        if vim.fn.argc(-1) > 0 then
            -- set an empty statusline till lualine loads
            vim.o.statusline = " "
        else
            -- hide the statusline on the starter page
            vim.o.laststatus = 0
        end
    end,
    opts = {
        options = {
            icons_enabled = false,
            globalstatus = true,
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
            disabled_filetypes = { statusline = { 'netrw', 'lazy', 'mason' } },
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = {
                'filename',
                function()
                    return vim.fn['nvim_treesitter#statusline'](180)
                end },
            lualine_x = { '' },
            lualine_y = { 'location' },
            lualine_z = { 'filetype' }
        },
    }
}
