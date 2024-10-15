# export TERM="xterm-256color"              # getting proper colors
# if [ -z "$TMUX" ]; then
#     export TERM="xterm-256color"
# else
#     export TERM="tmux-256color"
# fi
if [[ "$TERM" == "tmux-256color" ]]; then
  export TERM=screen-256color
fi

export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"
# export EDITOR="emacsclient -t -a ''"      # $EDITOR use Emacs in terminal
# export VISUAL="emacsclient -c -a emacs"   # $VISUAL use Emacs in GUI mode

### PATH
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
  then PATH="$HOME/Applications:$PATH"
fi

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="/usr/local/istio/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="$HOME/emacs-configs/doom-emacs/bin:$PATH"
export KUBECONFIG="${KUBECONFIG}:$HOME/.kube/config"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


#export LDFLAGS="-L/usr/local/opt/node@14/lib"
#export CPPFLAGS="-I/usr/local/opt/node@14/include"
