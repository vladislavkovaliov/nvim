local setup, null_ls = pcall(require, "null-ls")
if not setup then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local function get_ext(name)
	return vim.fn.executable(name) == 1 and name
end

-- Check do we have config files in the root of project
local eslint_executable = get_ext("eslint") or vim.fn.exepath("eslint") or vim.fn.exepath("eslint_d")
local prettier_executable = get_ext("prettier") or vim.fn.exepath("prettier")

null_ls.setup({
	sources = {
		formatting.prettier.with({
			command = prettier_executable,
			filetypes = {
				"javascript",
				"typescript",
				"css",
				"json",
				"html",
				"markdown",
				"scss",
				"lua",
				"typescriptreact",
				"javascriptreact",
			},
		}),
		formatting.stylua,
		diagnostics.eslint_d.with({
			command = eslint_executable,
			rootPatterns = {
				".eslintrc",
			},
		}),
	},
	-- configure format on save
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						filter = function(client)
							--  only use null-ls for formatting instead of lsp server
							return client.name == "null-ls"
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})
