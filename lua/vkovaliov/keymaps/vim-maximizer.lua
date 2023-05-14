local vim_maximizer = {}

vim_maximizer = {
	miximizer_toggle = {
		description = "Toggle neovim tree",
		mode = {
			keymap = "n",
			command_center = "v",
		},
		lhs = "<leader>sm",
		rhs = ":MaximizerToggle<CR>",
	},
}

return vim_maximizer
