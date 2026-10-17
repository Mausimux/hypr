local important_application = require('important_application')
local desktop_file_application = require('desktop_file_application')

local youtube = {
	key = 'Y',
	cmd = desktop_file_application('YouTube'),
	initial_title = 'YouTube',
	workspace_name = 'youtube',
}

important_application(youtube)
