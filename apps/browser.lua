local browser = 'brave'

hl.on('hyprland.start', function ()
	hl.exec_cmd('sleep 2 && ' .. browser, { workspace = 1 })
end)
