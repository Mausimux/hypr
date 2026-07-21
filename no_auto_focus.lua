local M = {}

local tag_name = 'no_auto_focus'

function M.init()
	local no_auto_focus_rule = hl.window_rule{
		enabled = false,
		match = { tag = tag_name },
		no_focus = true,
	}

	event.window.close(function(_window)
		no_auto_focus_rule:set_enabled(true)
	end)

	event.window.active(function(_window)
		no_auto_focus_rule:set_enabled(false)
	end)
end

function M.add(win_or_rule)
	tag.add(tag_name, win_or_rule)
end

return M
