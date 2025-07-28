local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14
config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}
config.color_scheme = "Catppuccin Mocha"

config.default_cwd = "/Users/notludovico/Code"

config.window_background_opacity = 0.6
config.macos_window_background_blur = 10

local act = wezterm.action
config.keys = {
	{
		key = "k",
		mods = "CMD",
		action = act.Multiple({
			-- wipe the scrollback *and* the viewport
			act.ClearScrollback("ScrollbackAndViewport"),
			-- send Ctrl‑L to your shell to redraw prompt
			act.SendKey({ key = "L", mods = "CTRL" }),
		}),
	},
}

-- Scrollbar
config.scrollback_lines = 3500
config.enable_scroll_bar = true

return config
