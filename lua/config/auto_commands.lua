vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd({ "VimLeavePre" }, {
	callback = function()
		if vim.g.project_root ~= nil then
			require("neoproj").save_session()
		end
	end,
})
