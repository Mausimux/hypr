local apps = require('apps')

hl.on('hyprland.start', function ()
	hl.exec_cmd(apps.status_bar)
	hl.exec_cmd('systemctl --user start hyprpolkitagent')
	hl.exec_cmd('wl-paste -w cliphist store')
end)
