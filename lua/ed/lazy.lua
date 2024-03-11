local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "ed.plugins" },
	{ import = "ed.plugins.lsp" },
	{
		"christoomey/vim-tmux-navigator", -- tmux & split window navigation
		"nvim-lua/plenary.nvim", -- lua functions
		"nvim-tree/nvim-web-devicons", -- vs-code like icons
		-- "jose-elias-alvarez/typescript.nvim", -- additional functionality for typescript server (e.g. rename file & update imports)
		"tpope/vim-fugitive", -- git integration
	},
}, {
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})
