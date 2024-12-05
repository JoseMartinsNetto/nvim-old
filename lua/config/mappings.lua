vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = function(mode, lhs, rhs, description)
	vim.keymap.set(mode, lhs, rhs, { desc = description })
end

map("n", "<Esc>", "<cmd>nohlsearch<CR>")

map("t", "<Esc><Esc>", "<C-\\><C-n>", "Exit terminal mode")

map("n", "<C-h>", "<C-w><C-h>", "Move focus to the left window")
map("n", "<C-l>", "<C-w><C-l>", "Move focus to the right window")
map("n", "<C-j>", "<C-w><C-j>", "Move focus to the lower window")
map("n", "<C-k>", "<C-w><C-k>", "Move focus to the upper window")

map("i", "jk", "<ESC>", "Escape insert mode")
map("v", "J", ":m '>+1<CR>gv=gv", "Move selected lines up")
map("v", "K", ":m '>-2<CR>gv=gv", "Move selected lines down")

map("n", "<leader>gg", "<cmd>LazyGit<CR>", "Open LazyGit")

map("n", "<leader>e", "<cmd>Oil<CR>", "Open Oil Explorer")

map("n", "<leader>x", function()
	local bd = require("mini.bufremove").delete
	if vim.bo.modified then
		local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
		if choice == 1 then -- Yes
			vim.cmd.write()
			bd(0)
		elseif choice == 2 then -- No
			bd(0, true)
		end
	else
		bd(0)
	end
end, "Delete buffer")
