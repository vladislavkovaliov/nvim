vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local gitsigns = require("vkovaliov.keymaps.gitsigns")
local split = require("vkovaliov.keymaps.split")

-- general keymap
-- keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>") -- no hightlights
keymap.set("n", "x", '"_x') -- to delete a single character

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set(split.verital.mode.keymap, split.verital.lhs, split.verital.rhs) -- to split window vertically
keymap.set(split.horizont.mode.keymap, split.horizont.lhs, split.horizont.rhs) -- to split window horizontally
keymap.set(split.equal.mode.keymap, split.equal.lhs, split.equal.rhs) -- to make spliting windows are equal
keymap.set(split.close.mode.keymap, split.close.lhs, split.close.rhs) -- to close current split window
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
-- keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<CR>")

-- gitsigns
keymap.set(gitsigns.preview_hunk.mode.keymap, gitsigns.preview_hunk.lhs, gitsigns.preview_hunk.rhs)
keymap.set(gitsigns.next_hunk.mode.keymap, gitsigns.next_hunk.lhs, gitsigns.next_hunk.rhs)
keymap.set(gitsigns.prev_hunk.mode.keymap, gitsigns.prev_hunk.lhs, gitsigns.prev_hunk.rhs)
