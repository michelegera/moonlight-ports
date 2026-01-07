# Moonlight theme for tmux
# Based on: https://github.com/atomiks/moonlight-vscode-theme

# Set status bar colors
set-option -g status-style bg='#191a2a',fg='#c8d3f5'

# Active window
set-window-option -g window-status-current-style bg='#82aaff',fg='#212337',bold

# Inactive windows
set-window-option -g window-status-style bg='#2f334d',fg='#7a88cf'

# Pane borders
set-option -g pane-border-style fg='#444a73'
set-option -g pane-active-border-style fg='#82aaff'

# Message text
set-option -g message-style bg='#444a73',fg='#c8d3f5'
set-option -g message-command-style bg='#444a73',fg='#c8d3f5'

# Status bar left
set-option -g status-left-length 100
set-option -g status-left "#[bg=#82aaff,fg=#212337,bold] #S #[bg=#2f334d,fg=#82aaff,nobold]"

# Status bar right
set-option -g status-right-length 100
set-option -g status-right "#[fg=#7a88cf]%Y-%m-%d #[fg=#c8d3f5]%H:%M #[bg=#82aaff,fg=#212337,bold] #h "

# Window status format
set-window-option -g window-status-format " #I:#W "
set-window-option -g window-status-current-format " #I:#W "

# Clock mode
set-window-option -g clock-mode-colour '#82aaff'

# Copy mode highlighting
set-window-option -g mode-style bg='#444a73',fg='#c8d3f5'
