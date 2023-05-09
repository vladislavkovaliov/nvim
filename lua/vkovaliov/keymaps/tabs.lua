local tabs = {}

tabs = {
	tabnew = {
		description = "To open a new tab",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>to",
		rhs = ":tabnew<CR>",
	},
	close_tab = {
		description = "To close current tab",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>tx",
		rhs = ":tabclose<CR>",
	},
	next_tab = {
		description = "Go to next tab",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>tn",
		rhs = ":tabn<CR>",
	},
	prev_tab = {
		description = "Go to prev tab",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>tp",
		rhs = ":tabp<CR>",
	},
}

return tabs
