vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local gitsigns = require("vkovaliov.keymaps.gitsigns")
local split = require("vkovaliov.keymaps.split")
local tabs = require("vkovaliov.keymaps.tabs")
local telescope = require("vkovaliov.keymaps.telescope")
local vim_maximizer = require("vkovaliov.keymaps.vim-maximizer")
local bufferline = require("vkovaliov.keymaps.bufferline")

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
keymap.set(tabs.tabnew.mode.keymap, tabs.tabnew.lhs, tabs.tabnew.rhs) -- to open new tab
keymap.set(tabs.close_tab.mode.keymap, tabs.close_tab.lhs, tabs.close_tab.rhs) -- to close current tab
keymap.set(tabs.next_tab.mode.keymap, tabs.next_tab.lhs, tabs.next_tab.rhs) -- go to next tab
keymap.set(tabs.prev_tab.mode.keymap, tabs.prev_tab.lhs, tabs.prev_tab.rhs) -- go to previous tab
keymap.set("i", "<F2>", "<ESC>:w<CR>") -- exit to visual mode and save file
keymap.set("n", "<F2>", ":w<CR>")
keymap.set("n", "<F1>", ":q<CR>")

-- vim-maximizer
keymap.set(
	vim_maximizer.miximizer_toggle.mode.keymap,
	vim_maximizer.miximizer_toggle.lhs,
	vim_maximizer.miximizer_toggle.rhs
)

-- nvim-tree
keymap.set("n", "<F5>", ":NvimTreeToggle<CR>")

-- telescope
keymap.set(telescope.find_files.mode.keymap, telescope.find_files.lhs, telescope.find_files.rhs)
keymap.set(telescope.live_grep.mode.keymap, telescope.live_grep.lhs, telescope.live_grep.rhs)
keymap.set(telescope.grep_string.mode.keymap, telescope.grep_string.lhs, telescope.grep_string.rhs)
keymap.set(telescope.buffers.mode.keymap, telescope.buffers.lhs, telescope.buffers.rhs)
keymap.set(telescope.help_tags.mode.keymap, telescope.help_tags.lhs, telescope.help_tags.rhs)
keymap.set(telescope.diagnostics.mode.keymap, telescope.diagnostics.lhs, telescope.diagnostics.rhs)

-- gitsigns
keymap.set(gitsigns.preview_hunk.mode.keymap, gitsigns.preview_hunk.lhs, gitsigns.preview_hunk.rhs)
keymap.set(gitsigns.next_hunk.mode.keymap, gitsigns.next_hunk.lhs, gitsigns.next_hunk.rhs)
keymap.set(gitsigns.prev_hunk.mode.keymap, gitsigns.prev_hunk.lhs, gitsigns.prev_hunk.rhs)

-- bufferline
keymap.set(
	bufferline.bufferline_next_tab.mode.keymap,
	bufferline.bufferline_next_tab.lhs,
	bufferline.bufferline_next_tab.rhs
)
keymap.set(
	bufferline.bufferline_prev_tab.mode.keymap,
	bufferline.bufferline_prev_tab.lhs,
	bufferline.bufferline_prev_tab.rhs
)
keymap.set(
	bufferline.buffeline_close_tab.mode.keymap,
	bufferline.buffeline_close_tab.lhs,
	bufferline.buffeline_close_tab.lhs
)
