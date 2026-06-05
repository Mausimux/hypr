local apps = require('apps')

bind({main_mod, 'Q'}, hl.dsp.exec_cmd(apps.terminal))
bind({main_mod, 'E'}, hl.dsp.exec_cmd(apps.fileManager))
bind({main_mod, 'R'}, hl.dsp.exec_cmd(apps.menu))

bind({main_mod, 'M'},
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
