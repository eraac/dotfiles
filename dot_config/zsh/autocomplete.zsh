# Configuration for autocomplete

# enable theme and prompt manager
autoload -U promptinit && promptinit

# allow prompt (PS1) to be dynamic
setopt prompt_subst

# enable autocomplete (zsh)
autoload -U compinit; compinit

# enable autocomplete (bash)
autoload -U +X bashcompinit && bashcompinit

