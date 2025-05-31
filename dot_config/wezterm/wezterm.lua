require 'format'
require 'status'

return {
    color_scheme = 'tokyonight',
    window_background_opacity = 1,
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

