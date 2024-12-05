return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			winbar = {
				enabled = true,
				name_formatter = function(term) --  term: Terminal
					return term.name
				end,
			},
		})
	end,
}
