local wezterm = require('wezterm')

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-----------------------------------------------------------
-- General
-----------------------------------------------------------
config.enable_tab_bar = false
config.window_decorations = 'INTEGRATED_BUTTONS | RESIZE'
config.send_composed_key_when_left_alt_is_pressed = true
config.default_cwd = '~'
config.window_padding = {
  left = '0.5cell',
  right = '0.5cell',
  top = '1.5cell',
  bottom = '0.2cell',
}

-----------------------------------------------------------
-- Appearance
-----------------------------------------------------------
config.color_scheme = 'Catppuccin Frappe'
config.font = wezterm.font_with_fallback {
    {
        family = 'MonoLisa',
        stretch = 'Expanded',
        weight = 'Regular',
        harfbuzz_features = { 'calt=1', 'liga=1', 'zero', 'ss06', 'ss03', 'ss07' },
    },
    {
        family = 'MonoLisa Nerd Font',
    }
}
config.font_size = 15

-- config
return config
