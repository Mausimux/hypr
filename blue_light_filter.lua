event.start(cmd('hyprsunset'))

bind({ main_mod, 'XF86AudioRaiseVolume' }, cmd('hyprctl hyprsunset temperature +250'),
	{ locked = true, repeating = true })
bind({ main_mod, 'XF86AudioLowerVolume' }, cmd('hyprctl hyprsunset temperature -250'),
	{ locked = true, repeating = true })
bind({ main_mod, 'XF86AudioMute' }, cmd('hyprctl hyprsunset temperature 6000'),
	{ locked = true, repeating = true })
