return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.bufremove").setup({})
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.surround").setup()
		require("mini.cursorword").setup()
	end,
}
