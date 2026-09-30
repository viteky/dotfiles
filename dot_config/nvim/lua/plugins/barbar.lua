return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			auto_hide = true,
			sidebar_filetypes = {
				["neo-tree"] = {
					event = "BufWipeout",
					-- text = "󰉋 File Explorer",
					align = "center",
				},
			},
		},
	},
}
