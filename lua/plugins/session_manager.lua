return {
	"Shatur/neovim-session-manager",
	enabled = false,
	config = function()
		require("session_manager").setup({})
	end,
}
