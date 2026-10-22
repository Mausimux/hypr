local important_application = require('important_application')
local desktop_file_application = require('desktop_file_application')

local whatsapp = {
	key = 'W',
	command = desktop_file_application('WhatsApp Web'),
	initial_title = 'WhatsApp Web',
	workspace_name = 'whatsapp',
}

important_application(whatsapp)
