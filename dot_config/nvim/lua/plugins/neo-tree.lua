return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = false,
		config = function()
			vim.keymap.set("n", "<C-e>", "<cmd>Neotree toggle<cr>", {})
		end,
		opts = {
			auto_clean_after_session_restore = true,
			close_if_last_window = true,
			filesystem = {
				follow_current_file = { enabled = true },
				hijack_netrw_behavior = "open_default",
				use_libuv_file_watcher = true,
			},
			open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "edgy" },
		},
	},
	{
		"Crysthamus/nvim-file-operations",
		dependencies = {
			"nvim-neo-tree/neo-tree.nvim",
		},
		config = function()
			require("nvim-file-operations").setup()
		end,
	},
	{
		"s1n7ax/nvim-window-picker",
		version = "2.*",
		config = function()
			require("window-picker").setup({
				filter_rules = {
					include_current_win = false,
					autoselect_one = true,
					bo = {
						filetype = { "neo-tree", "neo-tree-popup", "notify" },
						buftype = { "terminal", "quickfix" },
					},
				},
			})
		end,
	},
}
