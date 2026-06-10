local utils = require('utils')

local browser = {
	cmd = 'brave',
	initial_class = 'brave-browser',
}

hl.window_rule({
	name = 'Browser workspace',
	match = { initial_class = browser.initial_class },
	workspace = '1 silent',
})

event.start(function ()
	hl.exec_cmd(utils.run_when_network_is_up(browser.cmd))
end)

