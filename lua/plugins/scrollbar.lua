return {
  {
    'petertriho/nvim-scrollbar',
    event = 'BufReadPost',
    opts = {},
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'kevinhwang91/nvim-hlslens',
    },
  },
  {
    'kevinhwang91/nvim-hlslens',
    config = function()
      require('scrollbar.handlers.search').setup()
    end,
  },
}
