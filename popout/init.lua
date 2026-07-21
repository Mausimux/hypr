local popout_tag = require('popout.tag')

hl.window_rule{
	match = { tag = popout_tag },
	tile = false,
	float = true,
	no_initial_focus = true,
	pin = true,
	content = 'video',
	persistent_size = true,
}

tag.add(require('persistent_position.tag'), { tag = popout_tag })
tag.add(require('no_auto_focus.tag'), { tag = popout_tag })
