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
        ['R'] = 'refresh',
      },
      width = 40,
    },
    filesystem = {
      follow_current_file = {
        enabled = true,
      },
      use_libuv_file_watcher = true,
      scan_mode = 'deep',
    },
    event_handlers = {
      {
        event = 'file_opened',
        handler = function()
          require('neo-tree').close_all()
        end,
      },
      {
        event = 'neo_tree_buffer_enter',
        handler = function()
          vim.cmd 'setlocal relativenumber'
        end,
      },
    },
    git_status = {
      window = {
        position = 'float',
      },
    },
    auto_clean_after_session_restore = true,
  },
}
