local tag = {}

tag.has = function(win, tag)
	for _, t in ipairs(win.tags) do
		if t == tag or t == tag..'*' then return true end
	end
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
