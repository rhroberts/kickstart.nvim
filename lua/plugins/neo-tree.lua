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
      bind_to_cwd = false,
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    git_status = {
      window = {
        position = 'float',
      },
    },
    sources = { 'filesystem', 'buffers', 'git_status', 'document_symbols' },
    source_selector = {
      winbar = false,
      statusline = false,
      sources = {
        { source = 'filesystem' },
        { source = 'git_status' },
      },
    },
    event_handlers = {
      {
        event = 'git_status_changed',
        handler = function()
          require('neo-tree.sources.manager').refresh('filesystem')
          require('neo-tree.sources.manager').refresh('git_status')
        end,
      },
      {
        event = 'file_added',
        handler = function()
          require('neo-tree.sources.manager').refresh('filesystem')
        end,
      },
      {
        event = 'file_deleted',
        handler = function()
          require('neo-tree.sources.manager').refresh('filesystem')
        end,
      },
    },
    auto_clean_after_session_restore = true,
  },
}
