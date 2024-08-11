[[ -f ~/.aliases.zsh ]] && source ~/.aliases.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

### VMWare easy commands via functions ###
# vmup() {
#     [ $1 ] && /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion start ~/Virtual\ Machines.localized/$1.vmwarevm/$1.vmx nogui || echo "Please provide VM name"
# }
# vmdown() {
#     [ $1 ] && /Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion stop ~/Virtual\ Machines.localized/$1.vmwarevm/$1.vmx soft=True || echo "Please provide VM name"
# }
# vmlist() {
#   vmls=`ls ~/Virtual\ Machines.localized/ | sed 's/\.vmwarevm$//' | tr "/\n" " "`
#   echo "All available VMs: ${vmls}"
#   vmrn=`/Applications/VMware\ Fusion.app/Contents/Library/vmrun -T fusion list | grep vm | cut -d'/' -f6 | sed 's/\.vmx$//' | tr "/\n" " "`
#   echo "All running VMs: ${vmrn}"
# }

# ### not warp ###
# # history setup
# HISTFILE=$HOME/.zhistory
# SAVEHIST=1000
# HISTSIZE=999
# setopt share_history 
# setopt hist_expire_dups_first
# setopt hist_ignore_dups
# setopt hist_verify
#
# # completion using arrow keys (based on history)
# bindkey '^[[A' history-search-backward
# bindkey '^[[B' history-search-forward
#
# source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### end not warp ###

# neofetch
eval "neofetch"

# Load Starship
eval "$(starship init zsh)"

PROMPT="${PROMPT}"$'\n\n'

