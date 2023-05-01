local split = {}

split = {
	verital = {
		description = "Split window vertically",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>sv",
		rhs = "<C-w>v",
	},
	horizont = {
		description = "Split window horizontally",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>sh",
		rhs = "<C-w>s",
	},
	equal = {
		description = "Split windows equally",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>se",
		rhs = "<C-w>=",
	},
	close = {
		description = "Close splitted window",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>sx",
		rhs = ":close<CR>",
	},
}

return split
