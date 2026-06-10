local tag = hl.tag or {}

tag.has_tag = function(win, tag)
	if win.tags[tag] or win.tags[tag..'*'] then return true end
	return false
end

tag.add_tag = function(win, tag)
	hl.dsp.window.tag{ tag = '+'..tag, window = 'address'..win.address }
end

tag.del_tag = function(win, tag)
	hl.dsp.window.tag{ tag = '-'..tag, window = 'address'..win.address }
end

tag.toggle_tag = function(win, tag)
	hl.dsp.window.tag{ tag = tag, window = 'address'..win.address }
end

return tag
