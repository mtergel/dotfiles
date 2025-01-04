-- colorscheme
vim.cmd "colorscheme retrobox"

-- title on terminal
vim.opt.title = true

-- colors
-- vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"

vim.opt.updatetime = 50

-- line number
vim.wo.nu = true
vim.wo.relativenumber = true

-- tab width
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- indent
vim.opt.smartindent = true
vim.opt.wrap = false

-- undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/.vim/undodir"
vim.opt.undofile = true

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- scroll
vim.opt.scrolloff = 8
