return {
  'mfussenegger/nvim-dap',
  event = 'VeryLazy',
  config = function()
    require('dap').adapters['pwa-node'] = {
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
    require('dap').configurations.typescript = {
      {
        name = 'Attach to Remote',
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
    }

    vim.keymap.set('n', '<leader>db', "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = 'Toggle Breakpoint' })
    vim.keymap.set('n', '<leader>dc', "<cmd>lua require'dap'.continue()<cr>", { desc = 'Continue' })
    vim.keymap.set('n', '<leader>di', "<cmd>lua require'dap'.step_into()<cr>", { desc = 'Step Into' })
    vim.keymap.set('n', '<leader>do', "<cmd>lua require'dap'.step_over()<cr>", { desc = 'Step Over' })
    vim.keymap.set('n', '<leader>du', "<cmd>lua require'dap'.step_out()<cr>", { desc = 'Step Out' })
    vim.keymap.set('n', '<leader>dl', "<cmd>lua require'dap'.run_last()<cr>", { desc = 'Run Last' })
    vim.keymap.set('n', '<leader>dt', "<cmd>lua require'dap'.terminate()<cr>", { desc = 'Terminate' })
    vim.keymap.set('n', '<leader>dv', "<cmd>lua require'dap'.run_to_cursor()<cr>", { desc = 'Run to Cursor' })
    vim.keymap.set('n', '<leader>de', "<cmd>lua require'dap'.eval()<cr>", { desc = 'Evaluate' })
    vim.keymap.set('n', '<leader>dx', "<cmd>lua require'dap'.set_exception_breakpoints({type = {'all'}})<cr>", { desc = 'Set Exception Breakpoints' })
    vim.keymap.set('n', '<leader>dr', "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = 'Toggle REPL' })
    vim.keymap.set('n', '<leader>da', "<cmd>lua require'dap'.clear_breakpoints()<cr>", { desc = 'Toggle Breakpoint' })
  end,
}
