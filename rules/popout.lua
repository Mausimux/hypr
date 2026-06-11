local persistent_position = require('persistent_position')

window_rule({ tag = "popout" }, {
	tile = false,
	float = true,
	no_initial_focus = true,
	pin = true,
	content = "video",

	persistent_size = true,
	tag = persistent_position.add_tag,
})

