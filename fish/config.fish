##############################################################
# misc shell settings
##############################################################

# remove greeting
set fish_greeting ""

##############################################################
# aliases
##############################################################

alias vim="nvim"
alias lg="lazygit"

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
# conda
##############################################################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniconda/base/bin/conda
    eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
        . "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/Caskroom/miniconda/base/bin" $PATH
    end
end
# <<< conda initialize <<<

##############################################################
# starship
##############################################################
set -gx STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
starship init fish | source

##############################################################
# tools
##############################################################
zoxide init fish | source
