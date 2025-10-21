local M = {}

M.close_hover = function()
	local win_id = vim.api.nvim_get_current_win()

	if vim.api.nvim_win_get_config(win_id).relative ~= "" then
		vim.api.nvim_win_close(win_id, true)
	end
end

M.search_workspace_symbol = function()
	local query = vim.fn.expand("<cword>")
	M.close_hover()
	require("telescope.builtin").lsp_workspace_symbols({
		query = query,
		file_ignore_patterns = { ".git" },
		additional_args = function()
			return { "--fixed-strings" }
		end,
	})
end

M.setup = function()
	vim.keymap.set("n", "<leader>ws", ':lua require("word_finder").search_workspace_symbol()<CR>')
end

return M
