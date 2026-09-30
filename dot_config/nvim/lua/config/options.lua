vim.opt.clipboard = "unnamedplus"
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Line number
vim.opt.number = true

-- Tabs / indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- UI
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.laststatus = 3
vim.opt.splitkeep = "screen"
vim.opt.signcolumn = "yes"
vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.list = true
vim.opt.listchars = {
	tab = "» ",
	trail = "·",
	nbsp = "␣",
	extends = "⟩",
	precedes = "⟨",
}
vim.opt.fillchars = {
	eob = " ",
	fold = " ",
	foldopen = "",
	foldclose = "",
	foldsep = " ",
	msgsep = "─",
}

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.undofile = true
vim.opt.swapfile = false
