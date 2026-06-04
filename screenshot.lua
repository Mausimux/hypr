local keys = require('keys')

bind(
	{ keys.Print },
	hl.dsp.exec_cmd("hyprshot -m active -m output --clipboard-only")
)
bind(
	{ keys.mainMod, keys.Print },
	hl.dsp.exec_cmd("hyprshot -m active -m window --clipboard-only")
)
bind(
	{ keys.SHIFT, keys.Print },
	hl.dsp.exec_cmd("hyprshot -m region --clipboard-only")
)
