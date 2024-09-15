require 'format'
require 'status'
require 'event'

return {
    default_domain = 'WSL:Ubuntu',
    color_scheme = 'Catppuccin Latte',
    window_background_opacity = 0.93,
    font = require("wezterm").font("Firge35Nerd Console"),
    font_size = 12.0,
    window_frame = {
        font_size = 8.0,
      },
    keys = require("keybinds").keys,
    key_tables = require('keybinds').key_tables,
    disable_default_key_bindings = true,
    leader = { key = 'k', mods = 'CTRL', timeout_milliseconds = 2000 },
    status_update_interval = 1000,
    window_decorations = 'RESIZE',
    mouse_bindings = require('mousebinds').mouse_bindings,
}

