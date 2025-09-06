return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme('tokyonight-night')
      vim.cmd.hi('Comment gui=none')

      -- Make neo-tree and outline completely transparent
      vim.cmd.hi('NeoTreeNormal guibg=NONE')
      vim.cmd.hi('NeoTreeNormalNC guibg=NONE')
      vim.cmd.hi('NeoTreeWinSeparator guibg=NONE')
    end,
  },
}
