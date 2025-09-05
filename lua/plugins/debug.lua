-- debug.lua
--
-- Shows how to use the DAP plugin to debug your code.
--
-- Primarily focused on configuring the debugger for Go, but can
-- be extended to other languages as well. That's why it's called
-- kickstart.nvim and not kitchen-sink.nvim ;)

return {
  -- NOTE: Yes, you can install new plugins here!
  'mfussenegger/nvim-dap',
  -- NOTE: And you can specify dependencies as well
  dependencies = {
    -- Creates a beautiful debugger UI
    'rcarriga/nvim-dap-ui',

    -- Required dependency for nvim-dap-ui
    'nvim-neotest/nvim-nio',

    -- Installs the debug adapters for you
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',

    -- Add your own debuggers here
    -- 'leoluz/nvim-dap-go',
  },
  keys = function(_, keys)
    local dap = require('dap')
    local dapui = require('dapui')
    return {
      -- Basic debugging keymaps, feel free to change to your liking!
      { '<leader>db', dap.toggle_breakpoint, desc = 'Debug: Toggle Breakpoint' },
      { '<leader>da', dap.clear_breakpoints, desc = 'Debug: Clear All Breakpoints' },
      { '<leader>dc', dap.continue, desc = 'Debug: Start/Continue' },
      { '<leader>dr', dap.repl.toggle, desc = 'Debug: Toggle REPL' },
      { '<leader>di', dap.step_into, desc = 'Debug: Step Into' },
      { '<leader>do', dap.step_over, desc = 'Debug: Step Over' },
      { '<leader>dp', dap.step_out, desc = 'Debug: Step Out' },
      { '<leader>dl', dap.run_last, desc = 'Debug: Run Last' },
      { '<leader>dt', dap.terminate, desc = 'Debug: Terminate' },
      { '<leader>de', dap.eval, desc = 'Debug: Evaluate' },
      { '<leader>dv', dap.run_to_cursor, desc = 'Debug: Run to Cursor' },
      -- dapui
      -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
      { '<leader>dut', dapui.toggle, desc = 'Debug: Toggle DAP UI' },
      { '<leader>duo', dapui.open, desc = 'Debug: Open DAP UI' },
      { '<leader>duc', dapui.close, desc = 'Debug: Close DAP UI' },
      unpack(keys),
    }
  end,
  config = function()
    local dap = require('dap')
    local dapui = require('dapui')

    require('mason-nvim-dap').setup({
      -- Makes a best effort to setup the various debuggers with
      -- reasonable debug configurations
      automatic_installation = true,

      -- You can provide additional configuration to the handlers,
      -- see mason-nvim-dap README for more information
      handlers = {},

      -- You'll need to check that you have the required things installed
      -- online, please don't ask me how to install them :)
      ensure_installed = {
        -- Update this to ensure that you have the debuggers for the langs you want
        'delve',
      },
    })

    -- Dap UI setup
    -- For more information, see |:help nvim-dap-ui|
    dapui.setup({
      -- Set icons to characters that are more likely to work in every terminal.
      --    Feel free to remove or use ones that you like more! :)
      --    Don't feel like these are good choices.
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
    })

    -- Change breakpoint icons
    vim.api.nvim_set_hl(0, 'DapBreak', { fg = '#e51400' })
    vim.api.nvim_set_hl(0, 'DapStop', { fg = '#ffcc00' })
    local breakpoint_icons = vim.g.have_nerd_font
        and {
          Breakpoint = '',
          BreakpointCondition = '',
          BreakpointRejected = '',
          LogPoint = '',
          Stopped = '',
        }
      or {
        Breakpoint = '●',
        BreakpointCondition = '⊜',
        BreakpointRejected = '⊘',
        LogPoint = '◆',
        Stopped = '⭔',
      }
    for type, icon in pairs(breakpoint_icons) do
      local tp = 'Dap' .. type
      local hl = (type == 'Stopped') and 'DapStop' or 'DapBreak'
      vim.fn.sign_define(tp, { text = icon, texthl = hl, numhl = hl })
    end

    -- the below are nice but often unpredictable
    -- dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    -- dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    -- dap.listeners.before.event_exited['dapui_config'] = dapui.close

    -- -- Install golang specific config
    -- require('dap-go').setup {
    --   delve = {
    --     -- On Windows delve must be run attached or it crashes.
    --     -- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
    --     detached = vim.fn.has 'win32' == 0,
    --   },
    -- }

    -- node
    dap.adapters['pwa-node'] = {
      type = 'server',
      host = 'localhost',
      port = '${port}',
      executable = {
        command = 'node',
        -- 💀 Make sure to update this path to point to your installation
        -- https://github.com/microsoft/vscode-js-debug/releases
        args = { '/Users/rusty.roberts@leveltenenergy.com/Source/js-debug/src/dapDebugServer.js', '${port}' },
      },
    }
    dap.configurations.typescript = {
      {
        name = 'Attach to Application Debugging Port',
        type = 'pwa-node',
        request = 'attach',
        remoteRoot = '/app',
        localRoot = '${workspaceFolder}',
        protocol = 'inspector',
        address = 'localhost',
        port = 9229, -- Default Node.js debugging port
        restart = true,
        cwd = '${workspaceFolder}',
        skipFiles = { '<node_internals>/**' },
      },
      {
        name = 'Attach to Test Debugging Port',
        type = 'pwa-node',
        request = 'attach',
        remoteRoot = '/app',
        localRoot = '${workspaceFolder}',
        protocol = 'inspector',
        address = 'localhost',
        port = 9230, -- Default Node.js debugging port
        restart = true,
        cwd = '${workspaceFolder}',
        skipFiles = { '<node_internals>/**' },
        -- processId = require('dap.utils').pick_process, -- Let you pick the process
      },
    }
  end,
}
