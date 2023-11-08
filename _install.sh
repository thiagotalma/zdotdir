ZDOTDIR=~/.config/zsh
[[ -d $ZDOTDIR ]] && rm -rf $ZDOTDIR

git clone https://github.com/thiagotalma/zdotdir $ZDOTDIR

[[ -f ~/.zshenv && ! -L ~/.zshenv ]] && mv -f ~/.zshenv ~/.zshenv.bak
[[ ! -f ~/.zshenv ]] && ln -s $ZDOTDIR/.zshenv ~/.zshenv

zsh
