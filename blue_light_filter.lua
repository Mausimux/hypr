event.start(cmd('hyprsunset'))

bind({ key.main_mod, key.audio.volume.up }, cmd('hyprctl hyprsunset temperature +250'),
	{ locked = true, repeating = true })
bind({ key.main_mod, key.audio.volume.down }, cmd('hyprctl hyprsunset temperature -250'),
	{ locked = true, repeating = true })
bind({ key.main_mod, key.audio.volume.mute }, cmd('hyprctl hyprsunset temperature 6000'),
	{ locked = true, repeating = true })
