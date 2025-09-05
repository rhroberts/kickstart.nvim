-- Leader key must be set before plugins load
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Enable Nerd Font support
vim.g.have_nerd_font = true

-- Load configuration modules
require 'config.options'
require 'config.keymaps'
require 'config.autocommands'
require 'config.lazy'
