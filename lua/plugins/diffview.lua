return {
  'sindrets/diffview.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles', 'DiffviewFocusFiles' },
  opts = {},
  keys = {
    { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = '[g]it [d]iff view' },
    { '<leader>gh', '<cmd>DiffviewFileHistory<cr>', desc = '[g]it [h]istory' },
    { '<leader>gc', '<cmd>DiffviewClose<cr>', desc = '[g]it diff [c]lose' },
  },
}
