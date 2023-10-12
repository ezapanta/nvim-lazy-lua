return {
    'nvimdev/lspsaga.nvim',
    config = function()
        require('lspsaga').setup({})
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons'     -- optional
    },
    scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
    definition = {
      edit = "<CR>",
    },
    ui = {
     colors = {
       normal_bg = "#022746",
     },
    },
}
