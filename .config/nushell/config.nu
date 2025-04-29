# --------------------------------------------------------------------------------------
# theme
# --------------------------------------------------------------------------------------
source themes/catppuccin_macchiato.nu

# --------------------------------------------------------------------------------------
# aliases
# --------------------------------------------------------------------------------------
alias vim = nvim
alias lg = lazygit 
alias cat = bat 
alias k = kubectl 

# --------------------------------------------------------------------------------------
# config
# --------------------------------------------------------------------------------------
$env.config.show_banner = false
$env.config.edit_mode = "vi"
$env.config.buffer_editor = "nvim"
$env.config.history = {
  file_format: sqlite
  max_size: 1_000_000
  sync_on_enter: true
  isolation: true
}

# --------------------------------------------------------------------------------------
# env/path vars
# --------------------------------------------------------------------------------------
$env.path = [ 
    "/opt/homebrew/bin",
    "/usr/local/bin", 
    ("~/.local/bin" | path expand),
] ++ $env.path

$env.EDITOR = "nvim"
$env.LS_COLORS = (vivid generate catppuccin-macchiato)

# --------------------------------------------------------------------------------------
# scripts
# --------------------------------------------------------------------------------------
source scripts/direnv.nu

# --------------------------------------------------------------------------------------
# keymaps
# --------------------------------------------------------------------------------------
source keymaps/fzf.nu

# --------------------------------------------------------------------------------------
# tools
# --------------------------------------------------------------------------------------
mkdir ~/.cache/nushell

# starship init nu | save -f ~/.cache/nushell/starship.nu
$env.STARSHIP_CONFIG = ("~/.config/starship/starship.toml" | path expand)
source ~/.cache/nushell/starship.nu

# zoxide init nushell | save -f ~/.cache/nushell/zoxide.nu
source ~/.cache/nushell/zoxide.nu

# carapace _carapace nushell | save -f ~/.cache/nushell/carapace.nu
$env.CARAPACE_BRIDGES = 'fish'
source ~/.cache/nushell/carapace.nu

