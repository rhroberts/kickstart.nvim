return {
  'folke/trouble.nvim',
  opts = {
    auto_close = true,
  },
  config = function(_, opts)
    require('trouble').setup(opts)
    vim.api.nvim_set_hl(0, 'TroubleNormal', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'TroubleNormalNC', { bg = 'NONE' })
  end,
  cmd = 'Trouble',
  keys = {
    {
      '<leader>xx',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'diagnostics (trouble)',
    },
    {
      '<leader>xX',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = 'buffer diagnostics (trouble)',
    },
    {
      '<leader>cs',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = 'symbols (trouble)',
    },
    {
      '<leader>cl',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = 'lsp definitions / references / ... (trouble)',
    },
    {
      '<leader>xL',
      '<cmd>Trouble loclist toggle<cr>',
      desc = 'location list (trouble)',
    },
    {
      '<leader>xQ',
      '<cmd>Trouble qflist toggle<cr>',
      desc = 'quickfix list (trouble)',
    },
  },
}
