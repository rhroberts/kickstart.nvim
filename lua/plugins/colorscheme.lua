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

      -- Make telescope windows transparent
      vim.cmd.hi('TelescopeNormal guibg=NONE')
      vim.cmd.hi('TelescopeBorder guibg=NONE')
      vim.cmd.hi('TelescopePromptNormal guibg=NONE')
      vim.cmd.hi('TelescopeResultsNormal guibg=NONE')
      vim.cmd.hi('TelescopePreviewNormal guibg=NONE')
      vim.cmd.hi('TelescopePromptBorder guibg=NONE')
      vim.cmd.hi('TelescopeResultsBorder guibg=NONE')
      vim.cmd.hi('TelescopePreviewBorder guibg=NONE')

      -- Make which-key window transparent
      vim.cmd.hi('WhichKey guibg=NONE')
      vim.cmd.hi('WhichKeyNormal guibg=NONE')
      vim.cmd.hi('WhichKeyFloat guibg=NONE')
      vim.cmd.hi('NormalFloat guibg=NONE')

      -- Make nvim-cmp completion windows transparent
      vim.cmd.hi('Pmenu guibg=NONE')
      vim.cmd.hi('PmenuSel guibg=NONE')
      vim.cmd.hi('PmenuSbar guibg=NONE')
      vim.cmd.hi('PmenuThumb guibg=NONE')
      vim.cmd.hi('CmpPmenu guibg=NONE')
      vim.cmd.hi('CmpPmenuSel guibg=NONE')
      vim.cmd.hi('CmpDoc guibg=NONE')
      vim.cmd.hi('CmpDocBorder guibg=NONE')
    end,
  },
}
