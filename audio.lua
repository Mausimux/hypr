bind({ 'XF86AudioRaiseVolume' }, cmd('wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+'),
	{ locked = true, repeating = true })
bind({ 'XF86AudioLowerVolume' }, cmd('wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-'),
	{ locked = true, repeating = true })
bind({ 'XF86AudioMute' }, cmd('wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle'),
	{ locked = true, repeating = true })
bind({ 'XF86AudioMicMute' }, cmd('wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle'),
	{ locked = true, repeating = true })
