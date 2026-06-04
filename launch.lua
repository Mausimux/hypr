local apps = require('apps')
local keys = require('keys')

bind({keys.mainMod, keys.Q}, hl.dsp.exec_cmd(apps.terminal))
bind({keys.mainMod, keys.E}, hl.dsp.exec_cmd(apps.fileManager))
bind({keys.mainMod, keys.R}, hl.dsp.exec_cmd(apps.menu))

bind({keys.mainMod, keys.M},
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
