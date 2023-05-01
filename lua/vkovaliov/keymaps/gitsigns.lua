local gitsigns = {}

gitsigns = {
	preview_hunk = {
		description = "Preview hunks directly in the buffer (inline)",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>gp",
		rhs = "<cmd> Gitsigns preview_hunk<CR>",
	},
	next_hunk = {
		description = "Preview next hunk",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>gpn",
		rhs = "<cmd> Gitsigns next_hunk<CR>",
	},
	prev_hunk = {
		description = "Preview previous hunk",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>gpp",
		rhs = "<cmd> Gitsigns prev_hunk<CR>",
	},
}

return gitsigns
