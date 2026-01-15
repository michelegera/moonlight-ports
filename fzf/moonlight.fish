# Moonlight theme for fzf
# Based on: https://github.com/atomiks/moonlight-vscode-theme
# Source this file in your Fish config: source ~/.config/fish/conf.d/fzf-moonlight.fish

set -x FZF_DEFAULT_OPTS $FZF_DEFAULT_OPTS \
    --highlight-line \
    --info=inline-right \
    --ansi \
    --layout=reverse \
    --border=none \
    --color=bg+:#444a73 \
    --color=bg:#212337 \
    --color=border:#82aaff \
    --color=fg:#c8d3f5 \
    --color=gutter:#212337 \
    --color=header:#ff995e \
    --color=hl+:#86e1fc \
    --color=hl:#86e1fc \
    --color=info:#7a88cf \
    --color=marker:#fca7ea \
    --color=pointer:#fca7ea \
    --color=prompt:#82aaff \
    --color=query:#c8d3f5:regular \
    --color=scrollbar:#82aaff \
    --color=separator:#ff995e \
    --color=spinner:#fca7ea
