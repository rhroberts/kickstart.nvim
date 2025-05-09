return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  keys = { -- Example mapping to toggle outline
    { '<leader>l', '<cmd>Neotree toggle<CR>', desc = 'Toggle neo-tree' },
  },
  opts = {
    close_if_last_window = true,
    window = {
      mappings = {
        ['l'] = 'open',
        ['h'] = 'close_node',
      },
      width = 40,
    },
    filesystem = {
      follow_current_file = {
        enabled = true,
      },
    },
  },
}
