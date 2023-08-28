local telescope = {}

telescope = {
	find_files = {
		description = "To find file via telescope",
		mode = {
			keymap = "n",
			command_center = "v",
		},

		lhs = "<leader>ff",
		rhs = "<cmd>Telescope find_files<CR>",
	},
	live_grep = {
		description = "To live grep via telescope",
		mode = {
			keymap = "n",
			command_center = "v",
		},

		lhs = "<leader>fs",
		rhs = "<cmd>Telescope live_grep<CR>",
	},
	grep_string = {
		description = "To grep by string via telescope",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>fc",
		rhs = "<cmd>Telescope grep_string<CR>",
	},
	buffers = {
		description = "To navigate in buffer",
		mode = {
			keymap = "n",
			command_center = "v",
		},

		lhs = "<leader>fb",
		rhs = "<cmd>Telescope buffers<CR>",
	},
	help_tags = {
		description = "To call help tags",
		mode = {
			keymap = "n",
			command_center = "v",
		},

		lhs = "<leader>fh",
		rhs = "<cmd>Telescope help_tags<CR>",
	},
	diagnostics = {
		description = "To diagnostics via Telescope",
		mode = {
			keymap = "n",
			command_center = "v",
		},

		lhs = "<leader>fd",
		rhs = "<cmd>Telescope diagnostics<CR>",
	},
}

return telescope
