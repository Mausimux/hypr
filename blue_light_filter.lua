local keys = require('keys')

hl.on('hyprland.start', function ()
	hl.exec_cmd('hyprsunset')
end)

bind(
	{ keys.mainMod, keys.XF86AudioRaiseVolume },
	hl.dsp.exec_cmd("hyprctl hyprsunset temperature +250"),
	{ locked = true, repeating = true }
)
bind(
	{ keys.mainMod, keys.XF86AudioLowerVolume },
	hl.dsp.exec_cmd("hyprctl hyprsunset temperature -250"),
	{ locked = true, repeating = true }
)
bind(
	{ keys.mainMod, keys.XF86AudioMute },
	hl.dsp.exec_cmd("hyprctl hyprsunset temperature 6000"),
	{ locked = true, repeating = true }
)
