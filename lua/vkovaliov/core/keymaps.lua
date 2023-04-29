vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymap
-- keymap.set("i", "jk", "<ESC>")

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
keymap.set("i", "<F2>", "<ESC>:w<CR>") -- exit to visual mode and save file
keymap.set("n", "<F2>", ":w<CR>")
keymap.set("n", "<F1>", ":q<CR>")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<F5>", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<CR>")

-- gitsigns
keymap.set("n", "<leader>gp", "<cmd> Gitsigns preview_hunk<CR>") -- show hunk in window
keymap.set("n", "<leader>gpn", "<cmd> Gitsigns next_hunk<CR>")
keymap.set("n", "<leader>gpp", "<cmd> Gitsigns prev_hunk<CR>")
