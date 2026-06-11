local tag = {}

tag.has = function(tag, win)
	win = win or hl.get_active_window()
	for _, t in ipairs(win.tags) do
		if t == tag or t == tag..'*' then return true end
	end
	return false
end

tag.add = function(tag, win)
	win = win or hl.get_active_window()
	if type(win) == 'table' and win.address then
		hl.dsp.window.tag{ tag = '+'..tag, window = 'address'..win.address }
	else
		hl.window_rule{ match = win, tag = '+'..tag }
	end
end

tag.remove = function(tag, win)
	win = win or hl.get_active_window()
	if type(win) == 'table' and win.address then
		hl.dsp.window.tag{ tag = '-'..tag, window = 'address'..win.address }
	else
		hl.window_rule{ match = win, tag = '-'..tag }
	end
end

tag.toggle = function(tag, win)
	win = win or hl.get_active_window()
	if type(win) == 'table' and win.address then
		hl.dsp.window.tag{ tag = tag, window = 'address'..win.address }
	else
		hl.window_rule{ match = win, tag = tag }
	end
end

return tag
