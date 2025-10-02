return {
  {
    'mfussenegger/nvim-dap',
    lazy = true,
  },
  {
    'mfussenegger/nvim-dap-python',
    dependencies = { 'mfussenegger/nvim-dap' },
    ft = 'python',
    config = function()
      require('dap-python').setup('python')
    end,
  },
}
