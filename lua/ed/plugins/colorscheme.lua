return {
	-- {
	-- 	"rmehri01/onenord.nvim",
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		-- load the colorscheme here
	-- 		local onenord = require("onenord")
	-- 		local colors = require("onenord.colors").load()
	--
	-- 		onenord.setup({
	-- 			custom_highlights = {
	-- 				NvimTreeFolderIcon = { fg = colors.yellow },
	-- 				NvimTreeOpenedFile = { fg = colors.orange },
	-- 				NvimTreeOpenedFolderName = { fg = colors.orange, style = "italic" },
	-- 			},
	-- 		})
	-- 	end,
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		vim.cmd([[colorscheme tokyonight-moon]])
	-- 	end,
	-- },
	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			require("bluloco").setup({
				style = "dark", -- "auto" | "dark" | "light"
				transparent = false,
				italics = false,
				terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
				guicursor = true,
			})

			vim.opt.termguicolors = true
			vim.cmd("colorscheme bluloco")
		end,
	},
}
