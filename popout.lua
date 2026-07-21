local M = {}

local tag_name = 'popout'

function M.init()
	hl.window_rule{
		match = { tag = tag_name },
		tile = false,
		float = true,
		no_initial_focus = true,
		pin = true,
		content = 'video',
		persistent_size = true,
	}

	persistent_position.add{ tag = tag_name }
	no_auto_focus.add{ tag = tag_name }
end

function M.add(win_or_rule)
	tag.add(tag_name, win_or_rule)
end

return M
