# --------------------------------------------------------------------------------------
# aliases
# --------------------------------------------------------------------------------------
alias vim="nvim"
alias lg="lazygit"
alias ls="eza --color"
alias cat="bat"
alias k="kubectl"

# --------------------------------------------------------------------------------------
# env/path vars
# --------------------------------------------------------------------------------------
fish_add_path -p /opt/homebrew/bin/
fish_add_path /usr/local/bin/
fish_add_path "$HOME/.local/bin/"

set -gx EDITOR nvim
set -gx STARSHIP_CONFIG "$XDG_CONFIG_HOME/starship/starship.toml"
set -gx LS_COLORS (vivid generate catppuccin-macchiato)

# --------------------------------------------------------------------------------------
# tools
# --------------------------------------------------------------------------------------
zoxide init fish | source
direnv hook fish | source
starship init fish | source
