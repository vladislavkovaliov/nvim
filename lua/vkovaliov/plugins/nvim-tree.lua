local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
	return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
	update_focused_file = {
		enable = true,
	},

	renderer = {
		highlight_git = false,
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
	},

	actions = {
		open_file = {
			resize_window = true,
			window_picker = {
				enable = false,
			},
		},
	},

	view = {
		width = {
			min = "30%",
		},
		side = "right",
	},
})
