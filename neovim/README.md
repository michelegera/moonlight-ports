# Moonlight for Neovim

A Lua-based colorscheme for Neovim 0.5+ with full Treesitter and LSP support.

## Installation

### Manual Installation

Copy the theme to your colors directory:
```bash
mkdir -p ~/.config/nvim/colors
cp moonlight.lua ~/.config/nvim/colors/
```

### Using a Plugin Manager

**lazy.nvim:**
```lua
{
  dir = "~/path/to/moonlight-ports/neovim",
  name = "moonlight",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd('colorscheme moonlight')
  end,
}
```

**packer.nvim:**
```lua
use {
  '~/path/to/moonlight-ports/neovim',
  as = 'moonlight',
  config = function()
    vim.cmd('colorscheme moonlight')
  end
}
```

## Features

- Full Neovim 0.5+ support
- Treesitter syntax highlighting
- LSP diagnostic colors
- Git signs integration
- Optimized for readability

## Usage

In your `init.lua`:
```lua
vim.cmd('colorscheme moonlight')
```

Or in `init.vim`:
```vim
colorscheme moonlight
```

## Screenshots

The theme includes proper highlighting for:
- All standard Vim syntax groups
- Treesitter tokens
- LSP diagnostics (errors, warnings, hints, info)
- Git diff markers
- Cursor line and visual selection

## Customization

You can override specific highlight groups by adding to your config after setting the colorscheme:

```lua
vim.cmd('colorscheme moonlight')

-- Example: Make comments less italic
vim.api.nvim_set_hl(0, 'Comment', { fg = '#7a88cf', italic = false })
```
