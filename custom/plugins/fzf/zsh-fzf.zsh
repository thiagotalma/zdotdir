#!/usr/bin/env zsh

# do nothing if fzf is not installed
(( ! $+commands[fzf] )) && return

source /usr/share/doc/fzf/examples/key-bindings.zsh

source /usr/share/doc/fzf/examples/completion.zsh
