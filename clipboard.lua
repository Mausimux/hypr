local keys = require('keys')

-- Clipboard history
bind({keys.mainMod, keys.V},
	hl.dsp.exec_cmd("rofi -modi clipboard:/run/current-system/sw/bin/cliphist-rofi-img -show clipboard -show-icons"))

-- Clipboard paste watcher
hl.on('hyprland.start', function ()
	hl.exec_cmd('wl-paste -w cliphist store')
end)
