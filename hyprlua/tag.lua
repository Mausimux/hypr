local tag = {}

tag.has = function(win, tag)
	if win.tags[tag] or win.tags[tag..'*'] then return true end
	return false
end

tag.add = function(win, tag)
	hl.dsp.window.tag{ tag = '+'..tag, window = 'address'..win.address }
end

tag.remove = function(win, tag)
	hl.dsp.window.tag{ tag = '-'..tag, window = 'address'..win.address }
end

tag.toggle = function(win, tag)
	hl.dsp.window.tag{ tag = tag, window = 'address'..win.address }
end

return tag
