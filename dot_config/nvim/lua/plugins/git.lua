return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"NeogitOrg/neogit",
		lazy = true,
		dependencies = {
			"sindrets/diffview.nvim",
			"m00qek/baleia.nvim",
			"nvim-telescope/telescope.nvim",
			"ibhagwan/fzf-lua",
			"folke/snacks.nvim",
		},
		cmd = "Neogit",
		keys = {
			{ "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
		},
	},
	{ "akinsho/git-conflict.nvim", version = "*", config = true },
	{
		"wintermute-cell/gitignore.nvim",
		config = function()
			local gitignore = require("gitignore")
			vim.keymap.set("n", "<leader>gi", gitignore.generate)
		end,
	},
}
