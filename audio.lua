bind({ key.audio.volume.up }, cmd('wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+'),
	{ locked = true, repeating = true })
bind({ key.audio.volume.down }, cmd('wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-'),
	{ locked = true, repeating = true })
bind({ key.audio.volume.mute }, cmd('wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle'),
	{ locked = true, repeating = true })
bind({ key.audio.mic.mute }, cmd('wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle'),
	{ locked = true, repeating = true })
