# Configuration for tmux
#
# Require:
# - tmux
#
# Install:
# - brew install tmux

# fix ctrl+r search history within tmux
bindkey '^R' history-incremental-search-backward

# fix cmd+arrow to move left/right within tmux
bindkey "^[f" forward-word
bindkey "^[b" backward-word

