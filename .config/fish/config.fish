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
alias ld="lazydocker"
alias ls="eza --color"
alias ll="eza -la --color"
alias cat="bat"
alias k="kubectl"
alias kx="kubectx"

# --------------------------------------------------------------------------------------
# env/path vars
# --------------------------------------------------------------------------------------
fish_add_path "$HOMEBREW_PREFIX/bin"
fish_add_path "$HOME/.local/bin/"

set -gx EDITOR nvim
set -gx LS_COLORS (vivid generate catppuccin-macchiato)
set -gx HOMEBREW_PREFIX /opt/homebrew
set -gx HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
set -gx HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/homebrew"

# --------------------------------------------------------------------------------------
# tools
# --------------------------------------------------------------------------------------
zoxide init fish | source
direnv hook fish | source
starship init fish | source
atuin init fish | source
