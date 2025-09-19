# --------------------------------------------------------------------------------------
# general
# --------------------------------------------------------------------------------------
set fish_greeting ""

# --------------------------------------------------------------------------------------
# vim keybindings
# --------------------------------------------------------------------------------------
set -g fish_cursor_insert block

# --------------------------------------------------------------------------------------
# aliases
# --------------------------------------------------------------------------------------
alias n="nvim"
alias lg="lazygit"
alias ls="eza --color"
alias cat="bat"
alias k="kubectl"

# --------------------------------------------------------------------------------------
# env/path vars
# --------------------------------------------------------------------------------------
set -gx EDITOR nvim
set -gx LS_COLORS (vivid generate catppuccin-macchiato)
set -gx HOMEBREW_PREFIX /opt/homebrew
set -gx HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
set -gx HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/homebrew"

fish_add_path "$HOMEBREW_PREFIX/bin"
fish_add_path "$HOME/.local/bin/"

# --------------------------------------------------------------------------------------
# tools
# --------------------------------------------------------------------------------------
zoxide init fish | source
direnv hook fish | source
starship init fish | source
