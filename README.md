# Moonlight Theme Ports 🌌

A collection of [Moonlight](https://github.com/atomiks/moonlight-vscode-theme) theme ports for various development tools. The original Moonlight is a VS Code theme with bubblegum colors on a moonlit background.

## Themes Included

- **Claude Code** - AI coding assistant theme
- **opencode** - AI coding agent theme
- **oh-my-pi** - Terminal AI coding agent theme (https://omp.sh/)
- **Ghostty** - Terminal emulator theme
- **tmux** - Status bar and pane styling
- **Fish** - Shell prompt and syntax highlighting
- **fzf** - Fuzzy finder theme
- **Bat** - Syntax highlighter theme
- **eza** - Modern ls replacement theme
- **lazygit** - Terminal UI for git commands
- **hunk** - Review-first terminal diff viewer

For Neovim, use the official [moonlight.nvim](https://github.com/shaunsingh/moonlight.nvim) theme.

## Preview

![Moonlight Theme](https://github.com/atomiks/moonlight-vscode-theme/raw/master/preview.webp)

## Installation

### Claude Code

1. Copy the theme to Claude Code's themes directory:

   ```bash
   mkdir -p ~/.claude/themes
   cp claude-code/Moonlight.json ~/.claude/themes/
   ```

2. Apply the theme in Claude Code:

   ```
   /theme
   ```

   Select **moonlight** from the theme list.

### opencode

1. Copy the theme to opencode's themes directory:

   ```bash
   mkdir -p ~/.config/opencode/themes
   cp opencode/moonlight.json ~/.config/opencode/themes/
   ```

2. Apply the theme via the config file (`~/.config/opencode/tui.json`):

   ```json
   {
     "$schema": "https://opencode.ai/tui.json",
     "theme": "moonlight"
   }
   ```

   Or use the `/theme` command inside opencode and select **moonlight**.

### oh-my-pi

1. Copy the theme to oh-my-pi's custom themes directory:

   ```bash
   mkdir -p ~/.omp/agent/themes
   cp omp/moonlight.json ~/.omp/agent/themes/
   ```

2. Apply the theme in oh-my-pi:

   Open the Settings UI (`Ctrl+S` or `Cmd+S`) and select **moonlight** under `Appearance -> Dark Theme`.

   Or edit `~/.omp/agent/config.yml` directly:

   ```yaml
   theme:
     dark: moonlight
   ```

3. Restart oh-my-pi or switch themes interactively to load the theme.

### Ghostty

1. Add the theme to your Ghostty config:

   ```bash
   cat ghostty/moonlight >> ~/.config/ghostty/config
   ```

   Or copy the file and import it:

   ```bash
   mkdir -p ~/.config/ghostty/themes
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

### fzf

1. Copy the theme file to your Fish config:

   ```bash
   cp fzf/moonlight.fish ~/.config/fish/conf.d/fzf-moonlight.fish
   ```

2. Restart your shell or source the file:

   ```bash
   source ~/.config/fish/conf.d/fzf-moonlight.fish
   ```

   Note: The theme appends to `FZF_DEFAULT_OPTS`, so it works alongside your existing fzf configuration.

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

### lazygit

1. Copy the theme to lazygit's config directory:

   ```bash
   mkdir -p ~/.config/lazygit
   cp lazygit/moonlight.yml ~/.config/lazygit/
   ```

2. Set the `LG_CONFIG_FILE` environment variable to point to the theme file:

   **For Fish:**

   ```fish
   # Add to ~/.config/fish/config.fish
   set -gx LG_CONFIG_FILE "$HOME/.config/lazygit/moonlight.yml"
   ```

   **For Bash/Zsh:**

   ```bash
   # Add to ~/.bashrc or ~/.zshrc
   export LG_CONFIG_FILE="$HOME/.config/lazygit/moonlight.yml"
   ```

3. Restart your shell or source the config file:

   ```bash
   # Fish
   source ~/.config/fish/config.fish

   # Bash
   source ~/.bashrc

   # Zsh
   source ~/.zshrc
   ```

   Note: If you have an existing `~/.config/lazygit/config.yml` with custom settings, you can merge them by using comma-separated paths:

   ```bash
   export LG_CONFIG_FILE="$HOME/.config/lazygit/config.yml,$HOME/.config/lazygit/moonlight.yml"
   ```

### hunk

1. Copy the theme config to your hunk configuration. You can either append it to your existing config or create a new one:

   **If you have an existing hunk config** (`~/.config/hunk/config.toml` or `.hunk/config.toml`), append the theme section:

   ```bash
   cat hunk/moonlight.toml >> ~/.config/hunk/config.toml
   ```

   **To create a new config** with just the Moonlight theme:

   ```bash
   mkdir -p ~/.config/hunk
   cp hunk/moonlight.toml ~/.config/hunk/config.toml
   ```

2. Launch hunk with the custom theme:

   ```bash
   hunk --theme=custom
   ```

   Or set it as the default in your config by ensuring this line is present:

   ```toml
   theme = "custom"
   ```

   You can also switch themes interactively by pressing `t` while hunk is running.

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
