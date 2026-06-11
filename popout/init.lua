local popout_tag = require('popout.tag')
local persistent_position_tag = require('persistent_position.tag')

window_rule({ tag = popout_tag }, {
	tile = false,
	float = true,
	no_initial_focus = true,
	pin = true,
	content = "video",

	persistent_size = true,
})

tag.add({ tag = popout_tag }, persistent_position_tag)
