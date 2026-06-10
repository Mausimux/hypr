hl.event.start(function ()
	hl.exec_cmd('hyprsunset')
end)

hl.bind(
	{ main_mod, 'XF86AudioRaiseVolume' },
	hl.dsp.exec_cmd("hyprctl hyprsunset temperature +250"),
	{ locked = true, repeating = true }
)
hl.bind(
	{ main_mod, 'XF86AudioLowerVolume' },
	hl.dsp.exec_cmd("hyprctl hyprsunset temperature -250"),
	{ locked = true, repeating = true }
)
hl.bind(
	{ main_mod, 'XF86AudioMute' },
	hl.dsp.exec_cmd("hyprctl hyprsunset temperature 6000"),
	{ locked = true, repeating = true }
)
