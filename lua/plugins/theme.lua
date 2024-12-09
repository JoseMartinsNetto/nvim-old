return {
	{
		"HoNamDuong/hybrid.nvim",
		name = "hybrid",
		enabled = false,
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd.colorscheme("hybrid")
		end,
	},
	{
		"mhartington/oceanic-next",
		name = "oceanic-next",
		enabled = false,
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd.colorscheme("OceanicNext")
		end,
	},
	{
		"AlexvZyl/nordic.nvim",
		name = "nordic",
		enabled = true,
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd.colorscheme("nordic")
		end,
	},
}
