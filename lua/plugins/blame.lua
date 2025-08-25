return {
  'f-person/git-blame.nvim',
  event = 'VeryLazy',
  keys = {
    { '<leader>gb', '<cmd>GitBlameToggle<cr>', desc = 'Toggle [G]it [B]lame' },
  },
  opts = {
    enabled = false, -- if you want to enable the plugin
    message_template = '   <author> • <date> • <summary> • <<sha>>', -- template for the blame message
    date_format = '%m-%d-%Y %H:%M:%S', -- template for the date
    virtual_text_column = 1, -- virtual text start column
  },
}
