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
$env.path = ($env.path | prepend "/opt/homebrew/bin")
$env.path ++= [ 
    "/usr/local/bin", 
    ("~/.local/bin" | path expand),
]

$env.EDITOR = "nvim"
$env.STARSHIP_CONFIG = ("~/.config/starship/starship.toml" | path expand)
$env.CARAPACE_BRIDGES = 'fish'
$env.LS_COLORS = (vivid generate catppuccin-macchiato)

# --------------------------------------------------------------------------------------
# scripts
# --------------------------------------------------------------------------------------
source scripts/direnv.nu

# --------------------------------------------------------------------------------------
# tools
# --------------------------------------------------------------------------------------
mkdir ~/.cache/nushell

# starship init nu | save -f ~/.cache/nushell/starship.nu
source ~/.cache/nushell/starship.nu

# zoxide init nushell | save -f ~/.cache/nushell/zoxide.nu
source ~/.cache/nushell/zoxide.nu

# atuin init nu --disable-up-arrow | save -f ~/.cache/nushell/atuin.nu
source ~/.cache/nushell/atuin.nu

# carapace _carapace nushell | save -f ~/.cache/nushell/carapace.nu
source ~/.cache/nushell/carapace.nu

