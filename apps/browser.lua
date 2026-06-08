local browser = 'brave'

hl.on('hyprland.start', function ()
	hl.exec_cmd('nm-online -q && ' .. browser, { workspace = '1 silent' })
end)
