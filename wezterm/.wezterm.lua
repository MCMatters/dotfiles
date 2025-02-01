local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.term = 'xterm-256color'
config.front_end = 'OpenGL'
config.color_scheme = 'Ukraine'
config.font = wezterm.font_with_fallback {
  { family = 'Source Code Pro', weight = 'Regular' },
  { family = 'SauceCodePro NF', weight = 'Regular' },
  { family = 'SauceCodePro Nerd Font' },
  { family = 'Apple Color Emoji' },
}
config.font_size = 18.0
config.window_background_opacity = 0.99
config.macos_window_background_blur = 30
config.tab_bar_at_bottom = true
config.initial_cols = 150
config.initial_rows = 25
config.native_macos_fullscreen_mode = true
config.enable_scroll_bar = true
config.scrollback_lines = 1000000

-- config.default_prog = { '/usr/local/bin/tmux' }

config.window_padding = { left = 10, right = 10, top = 0, bottom = 0 }

config.keys = {
  {
    key = 'k',
    mods = 'SUPER',
    action = wezterm.action.Multiple {
      wezterm.action.ClearScrollback 'ScrollbackAndViewport',
      wezterm.action.SendKey { key = 'L', mods = 'CTRL' },
    },
  },
  {
    key = 'л',
    mods = 'SUPER',
    action = wezterm.action.Multiple {
      wezterm.action.ClearScrollback 'ScrollbackAndViewport',
      wezterm.action.SendKey { key = 'L', mods = 'CTRL' },
    },
  },
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  {
    key = 'ц',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
}

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = wezterm.mux.spawn_window(cmd or {
    position = {
      x = 0,
      y = 0,
      origin = 'ActiveScreen',
    },
  })
end)

return config
