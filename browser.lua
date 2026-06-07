local browser = require('apps').browser

hl.on('hyprland.start', function ()
	hl.exec_cmd(browser, { workspace = 1 })
end)
