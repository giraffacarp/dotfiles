##############################################################
# misc shell settings
##############################################################

# remove greeting
set fish_greeting ""

##############################################################
# aliases
##############################################################

alias vim="nvim"
alias uvim="uv run nvim"
alias lg="lazygit"
alias ulg="uv run lazygit"
alias ls="eza --color"
alias cat="bat"
alias k="kubectl"

##############################################################
# Terminal
##############################################################

if test "$TERM_PROGRAM" = "WezTerm"
    # Set configurations specific to WezTerm
end

##############################################################
# env variables
##############################################################
set -gx XDG_CONFIG_HOME "$HOME/.config"

##############################################################
# starship
##############################################################
set -gx STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
starship init fish | source

##############################################################
# carapace
##############################################################
# carapace --list | awk '{print $1}' | xargs -I{} touch ~/.config/fish/completions/{}.fish
# carapace _carapace | source

##############################################################
# tools
##############################################################
zoxide init fish | source
direnv hook fish | source
talhelper completion fish | source

# uv
fish_add_path "/Users/oswd/.local/bin"
