return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		opts = {
			auto_install = true,
			indent = { enable = true },
			highlight = { enable = true },
			folds = { enable = true },
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"php",
			},
		},
	},
	{
		"windwp/nvim-ts-autotag",
		opts = {},
	},
}
