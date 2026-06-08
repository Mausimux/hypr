local browser = 'brave'

hl.on('hyprland.start', function ()
	hl.exec_cmd(run_when_network_is_up(browser), { workspace = '1 silent' })
end)
