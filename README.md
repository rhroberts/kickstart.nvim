# Neovim Configuration

A modular Neovim configuration built from kickstart.nvim.

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
        ├── completion.lua   # Autocompletion (nvim-cmp)
        ├── editor.lua       # Editor enhancements (treesitter, formatting, etc.)
        ├── lsp.lua          # Language Server Protocol configuration
        ├── telescope.lua    # Fuzzy finder
        ├── ui.lua           # UI plugins (colorscheme, which-key)
        └── [other plugins]  # Additional plugin configurations
```

## Key Features

- **Modular structure**: Easy to navigate and maintain
- **All keymaps in one place**: See `lua/config/keymaps.lua`
- **Organized plugins**: Related functionality grouped together
- **LSP ready**: Full language server support
- **Fuzzy finding**: Telescope for files, buffers, and more

## Usage

Start Neovim and run `:Lazy` to view plugin status.

Leader key is set to `<Space>`. Use `<Space>sh` to search help documentation.
