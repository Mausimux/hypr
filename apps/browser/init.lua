require('apps.browser.bitwardern')
require('apps.browser.youtube')
local important_application = require('important_application')

local browser = {
	key = 'B',
	cmd = 'brave-origin',
	initial_class = 'brave-origin',
	workspace_name = 'browser',
}

important_application(browser)
