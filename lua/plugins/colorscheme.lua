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
      vim.cmd.hi('PmenuSel guibg=#3b4261 guifg=#c0caf5') -- Add visible background for selected item
      vim.cmd.hi('PmenuSbar guibg=NONE')
      vim.cmd.hi('PmenuThumb guibg=NONE')
      vim.cmd.hi('CmpPmenu guibg=NONE')
      vim.cmd.hi('CmpItemAbbrMatchFuzzy guifg=#bb9af7')
      vim.cmd.hi('CmpItemAbbrMatch guifg=#7dcfff')
      vim.cmd.hi('CmpItemKind guifg=#9ece6a')
      vim.cmd.hi('CmpDoc guibg=NONE')
      vim.cmd.hi('CmpDocBorder guibg=NONE')

      -- Make floating window borders transparent
      vim.cmd.hi('FloatBorder guibg=NONE guifg=#565f89')
      vim.cmd.hi('LspFloatWinBorder guibg=NONE')

      -- Make status line and tab line transparent
      vim.cmd.hi('StatusLine guibg=NONE')
      vim.cmd.hi('StatusLineNC guibg=NONE')
      vim.cmd.hi('TabLine guibg=NONE')
      vim.cmd.hi('TabLineFill guibg=NONE')
      vim.cmd.hi('TabLineSel guibg=NONE')

      -- Only override the inactive statusline to use a color from the theme
      local colors = require('tokyonight.colors').setup()
      vim.cmd.hi('MiniStatuslineInactive guibg=' .. colors.bg_dark .. ' guifg=' .. colors.comment)
    end,
  },
}
