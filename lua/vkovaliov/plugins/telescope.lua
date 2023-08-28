local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

local commander = require("commander")
-- print(commander_setup, commander)


local noremap = { noremap = true }

-- importing keymaps preset
local gitsigns = require("vkovaliov.keymaps.gitsigns")
local split = require("vkovaliov.keymaps.split")
local tabs = require("vkovaliov.keymaps.tabs")
local telescope_keymap = require("vkovaliov.keymaps.telescope")
local vim_maximizer = require("vkovaliov.keymaps.vim-maximizer")
local bufferline = require("vkovaliov.keymaps.bufferline")
local hop = require("hop").setup()


commander.add({
	{
		desc = "Open command_center",
		cmd = "<CMD>Telescope commander<CR>",
		keys = {
			{ "n", "<Leader>fg" },
		},
	},
})

-- DEFINE gitsigns
commander.add({
	{
		desc = gitsigns.preview_hunk.description,
		cmd = gitsigns.preview_hunk.rhs,
		keys = { gitsigns.preview_hunk.mode.command_center, gitsigns.preview_hunk.lhs, noremap },
		category = "git",
	},
	{
		desc = gitsigns.next_hunk.description,
		cmd = gitsigns.next_hunk.rhs,
		keys = { gitsigns.next_hunk.mode.command_center, gitsigns.next_hunk.lhs, noremap },
		category = "git",
	},
	{
		desc = gitsigns.prev_hunk.description,
		cmd = gitsigns.prev_hunk.rhs,
		keys = { gitsigns.prev_hunk.mode.command_center, gitsigns.prev_hunk.lhs, noremap },
		category = "git",
	},
})

-- DEFINE split window
commander.add({
	{
		desc = split.verital.description,
		cmd = split.verital.rhs,
		keys = {
			split.verital.mode.command_center,
			split.verital.lhs,
			noremap,
		},
		cat = "split",
	},
	{
		desc = split.horizont.description,
		cmd = split.horizont.rhs,
		keys = {
			split.horizont.mode.command_center,
			split.horizont.lhs,
			noremap,
		},
		cat = "split",
	},
	{
		desc = split.equal.description,
		cmd = split.equal.rhs,
		keys = {
			split.equal.mode.command_center,
			split.equal.lhs,
			noremap,
		},
		cat = "split",
	},
	{
		desc = split.close.description,
		cmd = split.close.rhs,
		keys = {
			split.close.mode.command_center,
			split.close.lhs,
			noremap,
		},
		cat = "split",
	},
})

-- DEFINE telescope keymap
commander.add({
	{
		desc = telescope_keymap.find_files.description,
		cmd = telescope_keymap.find_files.rhs,
		keys = {
			telescope_keymap.find_files.mode.command_center,
			telescope_keymap.find_files.lhs,
			noremap,
		},
		cat = "telescope",
	},
	{
		desc = telescope_keymap.live_grep.description,
		cmd = telescope_keymap.live_grep.rhs,
		keys = {
			telescope_keymap.live_grep.mode.command_center,
			telescope_keymap.live_grep.lhs,
			noremap,
		},
		cat = "telescope",
	},
	{
		desc = telescope_keymap.grep_string.description,
		cmd = telescope_keymap.grep_string.rhs,
		keys = {
			telescope_keymap.grep_string.mode.command_center,
			telescope_keymap.grep_string.lhs,
			noremap,
		},
		cat = "telescope",
	},
	{
		desc = telescope_keymap.buffers.description,
		cmd = telescope_keymap.buffers.rhs,
		keys = {
			telescope_keymap.buffers.mode.command_center,
			telescope_keymap.buffers.lhs,
			noremap,
		},
		cat = "telescope",
	},
	{
		desc = telescope_keymap.help_tags.description,
		cmd = telescope_keymap.help_tags.rhs,
		keys = {
			telescope_keymap.help_tags.mode.command_center,
			telescope_keymap.help_tags.lhs,
			noremap,
		},
		cat = "telescope",
	},
	{
		desc = telescope_keymap.diagnostics.description,
		cmd = telescope_keymap.diagnostics.rhs,
		keys = {
			telescope_keymap.diagnostics.mode.command_center,
			telescope_keymap.diagnostics.lhs,
			noremap,
		},
		cat = "telescope",
	},
})

-- DEFINE tabs
commander.add({
	{
		desc = tabs.tabnew.description,
		cmd = tabs.tabnew.rhs,
		key = {
			tabs.tabnew.mode.command_center,
			tabs.tabnew.lhs,
			noremap,
		},
	},
	{
		desc = tabs.close_tab.description,
		cmd = tabs.close_tab.rhs,
		key = {
			tabs.close_tab.mode.command_center,
			tabs.close_tab.lhs,
			noremap,
		},
	},
	{
		desc = tabs.next_tab.description,
		cmd = tabs.next_tab.rhs,
		key = {
			tabs.next_tab.mode.command_center,
			tabs.next_tab.lhs,
			noremap,
		},
	},
	{
		desc = tabs.prev_tab.description,
		cmd = tabs.prev_tab.rhs,
		key = {
			tabs.prev_tab.mode.command_center,
			tabs.prev_tab.lhs,
			noremap,
		},
	},
})

-- DEFINE vim maximizer
commander.add({
	{
		desc = vim_maximizer.miximizer_toggle.description,
		cmd = vim_maximizer.miximizer_toggle.rhs,
		keys = {
			vim_maximizer.miximizer_toggle.mode.command_center,
			vim_maximizer.miximizer_toggle.lhs,
			noremap,
		},
	},
})

-- DEFINE bufferline
commander.add({
	{
		desc = bufferline.bufferline_next_tab.description,
		cmd = bufferline.bufferline_next_tab.rhs,
		keys = {
			bufferline.bufferline_next_tab.mode.command_center,
			bufferline.bufferline_next_tab.lhs,
			noremap,
		},
	},
	{
		desc = bufferline.bufferline_prev_tab.description,
		cmd = bufferline.bufferline_prev_tab.rhs,
		keys = {
			bufferline.bufferline_prev_tab.mode.command_center,
			bufferline.bufferline_prev_tab.lhs,
			noremap,
		},
	},

	{
		desc = bufferline.buffeline_close_tab.description,
		cmd = bufferline.buffeline_close_tab.rhs,
		keys = {
			bufferline.buffeline_close_tab.mode.command_center,
			bufferline.buffeline_close_tab.lhs,
			noremap,
		},
	},
})

-- telescope setup
telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			},
		},
	},
	extensions = {
		commander = commander.setup({
			components = {
				"DESC",
				"KEYS",
				"CMD",
				"CAT",
			},
			sort_by = {
				"DESC",
				"KEYS",
				"CMD",
				"CAT",
			},
			integration = {
				telescope = {
					enable = false,
				},
				lazy = {
					enable = false,
				},
			},
		}),
	},
})

-- load telescope extensions
telescope.load_extension("fzf")
telescope.load_extension("commander")
