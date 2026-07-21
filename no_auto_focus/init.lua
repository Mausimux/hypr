local no_auto_focus_tag = require('no_auto_focus.tag')

local no_auto_focus = hl.window_rule{
	enabled = false,
	match = { tag = no_auto_focus_tag },
	no_focus = true,
}

event.window.close(function(_window)
	no_auto_focus:set_enabled(true)
end)

event.window.active(function(_window)
	no_auto_focus:set_enabled(false)
end)

