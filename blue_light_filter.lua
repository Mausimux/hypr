hl.on('hyprland.start', function ()
	hl.exec_cmd('hyprsunset')
end)

bind(
	{ mainMod, XF86AudioRaiseVolume },
	hl.dsp.exec_cmd("hyprctl hyprsunset temperature +250"),
	{ locked = true, repeating = true }
)
bind(
	{ mainMod, XF86AudioLowerVolume },
	hl.dsp.exec_cmd("hyprctl hyprsunset temperature -250"),
	{ locked = true, repeating = true }
)
bind(
	{ mainMod, XF86AudioMute },
	hl.dsp.exec_cmd("hyprctl hyprsunset temperature 6000"),
	{ locked = true, repeating = true }
)
