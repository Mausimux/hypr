local important_application = require('important_application')

local discord = {
	key = 'D',
	command = 'discord',
	initial_class = 'discord',
	workspace_name = 'discord',
}

important_application(discord)

bind({ key.mouse.side.last }, hl.dsp.pass { window = 'initialclass:' .. discord.initial_class },
	{ auto_consuming = true })

popout.add { initial_title = 'Discord Popout', initial_class = discord.initial_class }
