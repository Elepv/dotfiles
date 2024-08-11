[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.config/zsh/starship.zsh ]] && source ~/.config/zsh/starship.zsh

# thefuck alias
eval $(thefuck --alias fk)

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

# neofetch
eval "fastfetch"

# Load Starship
eval "$(starship init zsh)"

PROMPT="${PROMPT}"$'\n\n'
