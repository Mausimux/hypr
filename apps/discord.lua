local utils = require('utils')

local discord = {
	cmd = 'discord',
	initial_class = 'discord',
}

window_rule('Discord workspace', { initial_class = discord.initial_class }, {
	workspace = '2 silent',
})

event.start(function ()
	hl.exec_cmd(utils.run_when_network_is_up(discord.cmd))
end)

bind({mouse_side_last}, hl.dsp.pass({ window = 'initialclass:' .. discord.initial_class }), { non_consuming = true })

window_rule('Tag Discord Popout', { initial_title = 'Discord Popout', initial_class = discord.initial_class }, {
	tag = 'popout',
})
