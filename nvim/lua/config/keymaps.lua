local map = vim.keymap.set

-- Set <space> as the leader key - See `:help mapleader`
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Nerd Font
vim.g.have_nerd_font = true

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 3

-- Go back to netrw
map("n", "<leader>pv", vim.cmd.Ex)

-- Avoid yank when pasting over content
map("v", "p", [["_dP]])

-- Move highlithted area
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Scroll down with Ctrl-D and put the cursor in the middle of the page
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Use the system clipboard
map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])
map({"n", "v"}, "<leader>p", [["+p]])

-- Find and replace the string under the cursor
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
