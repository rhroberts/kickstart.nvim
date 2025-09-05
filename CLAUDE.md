# Claude Instructions for Neovim Configuration

## Repository Overview

This is a personal Neovim configuration based on kickstart.nvim, featuring a modular plugin structure with enhanced UI elements (scrollbar, breadcrumbs, file explorer) and comprehensive LSP/formatting support.

## Important Instructions

### Code Formatting

**ALWAYS run formatting after making changes to Lua files:**
```bash
stylua .
```

### File Organization

- Plugin files go in `lua/plugins/`
- Configuration modules go in `lua/config/`
- Keep plugin files focused on a single plugin or tightly related functionality
- Use descriptive filenames that match the plugin's purpose
- Keep `init.lua` clean
- when adding new keybindings, check if they conflict with any other keybindings