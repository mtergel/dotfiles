-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- crolling
vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

-- system
vim.opt.updatetime = 50
vim.o.termguicolors = true

vim.opt.colorcolumn = "80"
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- lsp
vim.opt.signcolumn = "yes"

-- lualine
vim.opt.showmode = false

-- mac systemclipboard
vim.opt.clipboard:append({ "unnamedplus" })
