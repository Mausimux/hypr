-- Clipboard history
bind({main_mod, 'V'},
	hl.dsp.exec_cmd("rofi -modi clipboard:/run/current-system/sw/bin/cliphist-rofi-img -show clipboard -show-icons"))

-- Clipboard paste watcher
event.start(function ()
	hl.exec_cmd('wl-paste -w cliphist store')
end)
