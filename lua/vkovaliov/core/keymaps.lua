vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymap
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>") -- no hightlights
keymap.set("n", "x", '"_x') -- to delete a single character

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- to split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- to split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- to make spliting windows are equal
keymap.set("n", "<leader>sx", ":close<CR>") -- to close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- to open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- to close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<F5>", ":NvimTreeToggle<CR>")
