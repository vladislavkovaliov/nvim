local bufferline = {}

bufferline = {
	bufferline_next_tab = {
		description = "Switch to next bufferline tab",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<C-i>",
		rhs = "<cmd> BufferLineCycleNext<CR>",
	},
	bufferline_prev_tab = {
		description = "Switch to prev bufferline tab",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<C-o>",
		rhs = "<cmd> BufferLineCyclePrev<CR>",
	},
	buffeline_close_tab = {
		description = "Close current tab",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<C-q>",
		rhs = "<cmd> bp | bd #<CR>",
	},
}

return bufferline
