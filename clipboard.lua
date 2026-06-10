-- Clipboard history
bind({main_mod, 'V'},
	hl.dsp.exec_cmd('cliphist list | rofi -dmenu -display-columns 2 | cliphist decode | wl-copy'))

-- Clipboard paste watcher
event.start(function ()
	hl.exec_cmd('wl-paste -w cliphist store')
end)
