#!/usr/bin/env bash
# Quick installer for Moonlight theme ports

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🌌 Moonlight Theme Installer"
echo "=============================="
echo

# Claude Code
if command -v claude &> /dev/null; then
    echo "🤖 Installing Claude Code theme..."
    mkdir -p ~/.claude/themes
    cp "$SCRIPT_DIR/claude-code/Moonlight.json" ~/.claude/themes/
    echo "   ✓ Installed to ~/.claude/themes/Moonlight.json"
    echo "   Run '/theme' in Claude Code and select 'moonlight'"
    echo
fi

# opencode
if command -v opencode &> /dev/null; then
    echo "🌌 Installing opencode theme..."
    mkdir -p ~/.config/opencode/themes
    cp "$SCRIPT_DIR/opencode/moonlight.json" ~/.config/opencode/themes/
    echo "   ✓ Installed to ~/.config/opencode/themes/moonlight.json"
    echo "   Run '/theme' in opencode and select 'moonlight'"
    echo "   Or set '\"theme\": \"moonlight\"' in ~/.config/opencode/tui.json"
    echo
fi

# Ghostty
if command -v ghostty &> /dev/null; then
    echo "👻 Installing Ghostty theme..."
    mkdir -p ~/.config/ghostty/themes
    cp "$SCRIPT_DIR/ghostty/moonlight" ~/.config/ghostty/themes/
    echo "   ✓ Installed to ~/.config/ghostty/themes/moonlight"
    echo "   Add 'theme = moonlight' to your Ghostty config"
    echo
fi

# tmux
if command -v tmux &> /dev/null; then
    echo "🖥️  Installing tmux theme..."
    TMUX_CONF=~/.tmux.conf
    SOURCE_LINE="source-file $SCRIPT_DIR/tmux/moonlight.tmux"
    
    if ! grep -q "moonlight.tmux" "$TMUX_CONF" 2>/dev/null; then
        echo "$SOURCE_LINE" >> "$TMUX_CONF"
        echo "   ✓ Added source line to ~/.tmux.conf"
        echo "   Run 'tmux source-file ~/.tmux.conf' to apply"
    else
        echo "   ℹ Already configured in ~/.tmux.conf"
    fi
    echo
fi

# Fish
if command -v fish &> /dev/null; then
    echo "🐟 Installing Fish theme..."
    mkdir -p ~/.config/fish/conf.d
    cp "$SCRIPT_DIR/fish/moonlight.fish" ~/.config/fish/conf.d/
    echo "   ✓ Installed to ~/.config/fish/conf.d/moonlight.fish"
    echo "   Restart your shell or run 'source ~/.config/fish/conf.d/moonlight.fish'"
    echo
fi

# Bat
if command -v bat &> /dev/null; then
    echo "🦇 Installing Bat theme..."
    BAT_THEMES="$(bat --config-dir)/themes"
    mkdir -p "$BAT_THEMES"
    cp "$SCRIPT_DIR/bat/Moonlight.tmTheme" "$BAT_THEMES/"
    bat cache --build &> /dev/null
    echo "   ✓ Installed and rebuilt cache"
    echo "   Use 'bat --theme=Moonlight' or add '--theme=\"Moonlight\"' to ~/.config/bat/config"
    echo
fi

# fzf
if command -v fzf &> /dev/null && command -v fish &> /dev/null; then
    echo "🔍 Installing fzf theme..."
    mkdir -p ~/.config/fish/conf.d
    cp "$SCRIPT_DIR/fzf/moonlight.fish" ~/.config/fish/conf.d/fzf-moonlight.fish
    echo "   ✓ Installed to ~/.config/fish/conf.d/fzf-moonlight.fish"
    echo "   Restart your shell or run 'source ~/.config/fish/conf.d/fzf-moonlight.fish'"
    echo
fi

# eza
if command -v eza &> /dev/null; then
    echo "📁 Installing eza theme..."
    mkdir -p ~/.config/eza
    cp "$SCRIPT_DIR/eza/moonlight.yml" ~/.config/eza/theme.yml
    echo "   ✓ Installed to ~/.config/eza/theme.yml"
    echo "   Run 'eza --long --git' to see the theme"
    echo
fi

# lazygit
if command -v lazygit &> /dev/null; then
    echo "🔀 Installing lazygit theme..."
    mkdir -p ~/.config/lazygit
    cp "$SCRIPT_DIR/lazygit/moonlight.yml" ~/.config/lazygit/
    echo "   ✓ Installed to ~/.config/lazygit/moonlight.yml"
    echo "   Set LG_CONFIG_FILE to use the theme (see README for details)"
    echo
fi

echo "✨ Installation complete!"
echo
echo "For more details, see README.md in each theme directory."
