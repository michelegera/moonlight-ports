# Moonlight Theme Ports 🌌

A collection of [Moonlight](https://github.com/atomiks/moonlight-vscode-theme) theme ports for various development tools. The original Moonlight is a VS Code theme with bubblegum colors on a moonlit background.

## Themes Included

- **Ghostty** - Terminal emulator theme
- **tmux** - Status bar and pane styling
- **Fish** - Shell prompt and syntax highlighting
- **Bat** - Syntax highlighter theme
- **eza** - Modern ls replacement theme

For Neovim, use the official [moonlight.nvim](https://github.com/shaunsingh/moonlight.nvim) theme.

## Preview

![Moonlight Theme](https://github.com/atomiks/moonlight-vscode-theme/raw/master/preview.webp)

## Installation

### Ghostty

1. Add the theme to your Ghostty config:

   ```bash
   cat ghostty/moonlight >> ~/.config/ghostty/config
   ```

   Or copy the file and import it:

   ```bash
   cp ghostty/moonlight ~/.config/ghostty/themes/
   ```

   Then in your config:

   ```
   theme = moonlight
   ```

### tmux

1. Source the theme in your `~/.tmux.conf`:

   ```bash
   # Add to ~/.tmux.conf
   source-file ~/path/to/moonlight-ports/tmux/moonlight.tmux
   ```

2. Reload tmux:
   ```bash
   tmux source-file ~/.tmux.conf
   ```

### Fish

1. Copy the theme file to your Fish config:

   ```bash
   mkdir -p ~/.config/fish/conf.d
   cp fish/moonlight.fish ~/.config/fish/conf.d/
   ```

2. Restart your shell or source the file:
   ```bash
   source ~/.config/fish/conf.d/moonlight.fish
   ```

### Bat

1. Copy the theme to bat's theme directory:

   ```bash
   mkdir -p "$(bat --config-dir)/themes"
   cp bat/Moonlight.tmTheme "$(bat --config-dir)/themes/"
   ```

2. Rebuild bat's cache:

   ```bash
   bat cache --build
   ```

3. Use the theme:

   ```bash
   bat --theme=Moonlight yourfile.txt
   ```

   Or set it as default in `~/.config/bat/config`:

   ```
   --theme="Moonlight"
   ```

### eza

1. Copy the theme to eza's config directory:

   ```bash
   mkdir -p ~/.config/eza
   cp eza/moonlight.yml ~/.config/eza/theme.yml
   ```

2. eza will automatically use the theme file. Test it with:

   ```bash
   eza --long --git
   ```

   Note: If you want to keep your existing theme and switch between themes, you can use different filenames and symlink:

   ```bash
   cp eza/moonlight.yml ~/.config/eza/moonlight.yml
   ln -sf ~/.config/eza/moonlight.yml ~/.config/eza/theme.yml
   ```

## Color Palette

The theme uses the following color palette (see [colors.md](colors.md) for complete reference):

- **Background**: `#212337`
- **Foreground**: `#c8d3f5`
- **Red**: `#ff757f`
- **Orange**: `#ff995e`
- **Yellow**: `#ffc777`
- **Green**: `#c3e88d`
- **Cyan**: `#86e1fc`
- **Blue**: `#82aaff`
- **Purple**: `#c099ff`
- **Pink**: `#fca7ea`

## Credits

- Original theme by [@atomiks](https://github.com/atomiks)
- Ported with love for the Moonlight aesthetic

## License

MIT - See LICENSE file

## Contributing

Found an issue or want to improve a theme? PRs welcome! Please ensure colors stay true to the original Moonlight palette.
