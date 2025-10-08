-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 100
config.initial_rows = 30
-- or, changing the font size and color scheme.
config.color_scheme = 'Gruvbox dark, hard (base16)'
-- config.color_scheme = 'Railscasts (dark) (terminal.sexy)'
-- config.color_scheme = 'Gruvbox light, hard (base16)'
config.use_fancy_tab_bar = true
config.font = wezterm.font 'MonaspiceNe Nerd Font Mono'
config.font_size = 12

config.keys = {
		{ key = 't', mods = 'SHIFT|CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
		{ key = 't', mods = 'CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
		{ key = 'w', mods = 'SHIFT|CTRL', action = act.CloseCurrentTab{ confirm = true } },
		{ key = 'w', mods = 'CTRL', action = act.CloseCurrentTab{ confirm = true } },
		{key = 'Enter', mods = 'ALT', action = wezterm.action.DisableDefaultAssignment,
		 },
	}
-- Finally, return the configuration to wezterm:
return config
