return {
	{
		"folke/edgy.nvim",
		event = "VeryLazy",
		opts = {
			exit_when_last = true,
			animate = { enabled = false },
			bottom = {
				{
					title = " Terminal",
					ft = "toggleterm",
					size = { height = 0.4 },
					filter = function(buf, win)
						return vim.api.nvim_win_get_config(win).relative == ""
					end,
				},
				"Trouble",
				{ ft = "qf", title = "QuickFix" },
				{
					ft = "help",
					size = { height = 20 },
					filter = function(buf)
						return vim.bo[buf].buftype == "help"
					end,
				},
			},
			left = {
				{
					title = "󰉋 File Explorer",
					ft = "neo-tree",
					filter = function(buf)
						return vim.b[buf].neo_tree_source == "filesystem"
					end,
					size = { height = 0.5 },
				},
				{
					title = " Git Status",
					ft = "neo-tree",
					filter = function(buf)
						return vim.b[buf].neo_tree_source == "git_status"
					end,
					pinned = true,
					collapsed = true,
					open = "Neotree position=right git_status",
				},
				"neo-tree",
			},
		},
	},
}
