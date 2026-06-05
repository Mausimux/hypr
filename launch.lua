local apps = require('apps')

bind({mainMod, Q}, hl.dsp.exec_cmd(apps.terminal))
bind({mainMod, E}, hl.dsp.exec_cmd(apps.fileManager))
bind({mainMod, R}, hl.dsp.exec_cmd(apps.menu))

bind({mainMod, M},
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
