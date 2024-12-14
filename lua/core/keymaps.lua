vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.number = true
vim.opt.wrap = false 

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround =true
vim.opt.expandtab = true

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>e", ":Ex<CR>")

vim.keymap.set("n", ":q<cr>", ":qa<cr>")
vim.keymap.set("n", ":w<cr>", ":wa<cr>")
vim.keymap.set("n", ":wq<cr>", ":wqa<cr>")
