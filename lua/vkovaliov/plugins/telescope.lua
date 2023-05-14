local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

local command_center = require("command_center")
local noremap = { noremap = true }

-- importing keymaps preset
local gitsigns = require("vkovaliov.keymaps.gitsigns")
local split = require("vkovaliov.keymaps.split")
local tabs = require("vkovaliov.keymaps.tabs")
local telescope_keymap = require("vkovaliov.keymaps.telescope")

command_center.add({
	{
		desc = "Open command_center",
		cmd = "<CMD>Telescope command_center<CR>",
		keys = {
			{ "n", "<Leader>fg", noremap },
			{ "v", "<Leader>fg", noremap },

			-- If ever hesitate when using telescope start with <leader>f,
			-- also open command center
			{ "n", "<Leader>f", noremap },
			{ "v", "<Leader>f", noremap },
		},
	},
}, {
	mode = command_center.mode.SET,
})

-- DEFINE gitsigns
command_center.add({
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
command_center.add({
	{
		desc = split.verital.description,
		cmd = split.verital.rhs,
		keys = {
			split.verital.mode.command_center,
			split.verital.lhs,
			noremap,
		},
		category = "split",
	},
	{
		desc = split.horizont.description,
		cmd = split.horizont.rhs,
		keys = {
			split.horizont.mode.command_center,
			split.horizont.lhs,
			noremap,
		},
		category = "split",
	},
	{
		desc = split.equal.description,
		cmd = split.equal.rhs,
		keys = {
			split.equal.mode.command_center,
			split.equal.lhs,
			noremap,
		},
		category = "split",
	},
	{
		desc = split.close.description,
		cmd = split.close.rhs,
		keys = {
			split.close.mode.command_center,
			split.close.lhs,
			noremap,
		},
		category = "split",
	},
})

-- DEFINE telescope keymap
command_center.add({
	{
		desc = telescope_keymap.find_files.description,
		cmd = telescope_keymap.find_files.rhs,
		keys = {
			telescope_keymap.find_files.mode.command_center,
			telescope_keymap.find_files.lhs,
			noremap,
		},
		category = "telescope",
	},
	{
		desc = telescope_keymap.live_grep.description,
		cmd = telescope_keymap.live_grep.rhs,
		keys = {
			telescope_keymap.live_grep.mode.command_center,
			telescope_keymap.live_grep.lhs,
			noremap,
		},
		category = "telescope",
	},
	{
		desc = telescope_keymap.grep_string.description,
		cmd = telescope_keymap.grep_string.rhs,
		keys = {
			telescope_keymap.grep_string.mode.command_center,
			telescope_keymap.grep_string.lhs,
			noremap,
		},
		category = "telescope",
	},
	{
		desc = telescope_keymap.buffers.description,
		cmd = telescope_keymap.buffers.rhs,
		keys = {
			telescope_keymap.buffers.mode.command_center,
			telescope_keymap.buffers.lhs,
			noremap,
		},
		category = "telescope",
	},
	{
		desc = telescope_keymap.help_tags.description,
		cmd = telescope_keymap.help_tags.rhs,
		keys = {
			telescope_keymap.help_tags.mode.command_center,
			telescope_keymap.help_tags.lhs,
			noremap,
		},
		category = "telescope",
	},
	{
		desc = telescope_keymap.diagnostics.description,
		cmd = telescope_keymap.diagnostics.rhs,
		keys = {
			telescope_keymap.diagnostics.mode.command_center,
			telescope_keymap.diagnostics.lhs,
			noremap,
		},
		category = "telescope",
	},
})

-- DEFINE tabs
command_center.add({
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
		command_center = {
			components = {
				command_center.component.DESC,
				command_center.component.KEYS,
			},
			sort_by = {
				command_center.component.DESC,
				command_center.component.KEYS,
			},
			auto_replace_desc_with_cmd = false,
		},
	},
})

-- load telescope extensions
telescope.load_extension("fzf")
telescope.load_extension("command_center")
