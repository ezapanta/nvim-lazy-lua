return {
	{
		"rmehri01/onenord.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			local onenord = require("onenord")
			local colors = require("onenord.colors").load()

			onenord.setup({
				custom_highlights = {
					NvimTreeFolderIcon = { fg = colors.yellow },
					NvimTreeOpenedFile = { fg = colors.orange },
					NvimTreeOpenedFolderName = { fg = colors.orange, style = "italic" },
				},
			})

			vim.cmd([[colorscheme onenord]])
		end,
	},
}
