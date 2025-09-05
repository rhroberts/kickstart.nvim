# Neovim Configuration

A modular Neovim configuration built from kickstart.nvim.

## Prerequisites

Before using this configuration, install the following:

- **Neovim** (v0.10+): `brew install neovim`
- **stylua**: `brew install stylua` (for Lua code formatting)
- **lefthook**: `brew install lefthook` (for git hooks)

After cloning this configuration, run:
```bash
lefthook install
```

## Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point, bootstraps configuration
└── lua/
    ├── config/
    │   ├── options.lua      # Vim settings and options
    │   ├── keymaps.lua      # All keymaps and key bindings
    │   ├── autocommands.lua # Autocommands and user commands
    │   └── lazy.lua         # Plugin manager setup
    └── plugins/             # All plugin configurations
        ├── colorscheme.lua  # Theme configuration
        ├── completion.lua   # Autocompletion (nvim-cmp)
        ├── formatting.lua   # Code formatting (stylua, prettier, etc.)
        ├── gitsigns.lua     # Git integration
        ├── lsp.lua          # Language Server Protocol configuration
        ├── mini.lua         # Mini.nvim plugins (statusline, surround, etc.)
        ├── neo-tree.lua     # File explorer
        ├── scrollbar.lua    # Enhanced scrollbar with git/diagnostic info
        ├── telescope.lua    # Fuzzy finder
        ├── treesitter.lua   # Syntax highlighting
        ├── which-key.lua    # Keybinding helper
        ├── winbar.lua       # Breadcrumb navigation
        └── [other plugins]  # Additional plugin configurations
```

## Key Features

- **Modular structure**: Easy to navigate and maintain
- **All keymaps in one place**: See `lua/config/keymaps.lua`
- **Organized plugins**: Each plugin has its own file
- **LSP ready**: Full language server support with auto-completion
- **Enhanced UI**: Scrollbar, breadcrumbs, and modern file explorer
- **Git integration**: Signs in editor, status in scrollbar, and file tree
- **Auto-formatting**: Code formatting on save and pre-commit hooks
- **Fuzzy finding**: Telescope for files, buffers, and more

## Usage

Start Neovim and run `:Lazy` to view plugin status.

Leader key is set to `<Space>`. Use `<Space>sh` to search help documentation.
