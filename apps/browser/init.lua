require('apps.browser.bitwardern')
require('apps.browser.youtube')
require('apps.browser.whatsapp')
require('apps.browser.youtube_music')
local important_application = require('important_application')

local browser = {
	key = 'B',
	command = 'brave-origin',
	initial_class = 'brave-origin',
	workspace_name = 'browser',
}

important_application(browser)
