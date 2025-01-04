local keymap = vim.keymap

-- Exit insert
keymap.set("i", "jj", "<Esc>")

-- File explorer
keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Move select
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center cursor when navigating
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Keep copy when pasting
keymap.set("x", "<leader>p", "\"_dP")

-- Copy to system register
keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")

-- Split window
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")

-- Move window
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")
keymap.set("", "sq", "<C-w>q")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w>5<")
keymap.set("n", "<C-w><right>", "<C-w>5>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
