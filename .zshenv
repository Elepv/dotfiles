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

### golang ###
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="/usr/local/istio/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="$HOME/emacs-configs/doom-emacs/bin:$PATH"
#export KUBECONFIG="${KUBECONFIG}:$HOME/.kube/config"

#export LDFLAGS="-L/usr/local/opt/node@14/lib"
#export CPPFLAGS="-I/usr/local/opt/node@14/include"


### 设置和初始化 Node Version Manager (NVM) 的环境 ###
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

### bat theme ###
export BAT_THEME=tokyonight_night

