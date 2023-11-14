#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

# Zsh options.
setopt extended_glob

# Autoload functions you might want to use with antidote.
ZFUNCDIR=${ZFUNCDIR:-$ZDOTDIR/functions}
fpath=($ZFUNCDIR $fpath)
autoload -Uz $fpath[1]/*(.:t)

# Source zstyles you might use with antidote.
[[ -e ${ZDOTDIR:-~}/.zstyles ]] && source ${ZDOTDIR:-~}/.zstyles

# Clone antidote if necessary.
[[ -d ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-~}/.antidote

# Create an amazing Zsh config using antidote plugins.
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load




#### START BINDKEY
bindkey '\e[1~'     beginning-of-line
bindkey '\e[H'      beginning-of-line
bindkey '\eOH'      beginning-of-line

bindkey '\e[4~'     end-of-line
bindkey '\e[F'      end-of-line
bindkey '\eOF'      end-of-line

bindkey '\e[3~'     delete-char
bindkey '^[[3~'     delete-char

bindkey '^?'        backward-delete-char

bindkey '\e[1;5D'   backward-word
bindkey '\e[5D'     backward-word
bindkey '\e\e[D'    backward-word
bindkey '^[^[[D'    backward-word
bindkey '^[[1;5D'   backward-word
bindkey '^[[1;3D'   backward-word
bindkey '^[[5D'     backward-word

bindkey '\e[1;5C'   forward-word
bindkey '\e[5C'     forward-word
bindkey '\e\e[C'    forward-word
bindkey '^[^[[C'    forward-word
bindkey '^[[1;5C'   forward-word
bindkey '^[[1;3C'   forward-word
bindkey '^[[5C'     forward-word

bindkey '^[[A'      history-substring-search-up
bindkey '\eOA'      history-substring-search-up
bindkey '^[[B'      history-substring-search-down
bindkey '\eOB'      history-substring-search-down
#### END BINDKEY







# load local configurations
[[ -e ~/.local.sh ]] && source ~/.local.sh
