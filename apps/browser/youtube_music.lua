local important_application = require('important_application')
local desktop_file_application = require('desktop_file_application')

local youtube_music = {
	key = 'M',
	command = desktop_file_application('YouTube Music'),
	initial_title = 'YouTube Music',
	workspace_name = 'youtube music',
}

important_application(youtube_music)
