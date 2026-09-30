return {
	{
		"mfussenegger/nvim-lint",
		event = {
			"BufReadPost",
			"BufNewFile",
		},
		config = function()
			local lint = require("lint")
			lint.linters_by_ft = {
				javascript = { "eslint_d" },
				javascriptreact = { "eslint_d" },
				typescript = { "eslind_d" },
				typescriptreact = { "eslint_d" },
				python = { "ruff" },
				lua = { "luacheck" },
				sh = { "shellcheck" },
			}
			vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
}
