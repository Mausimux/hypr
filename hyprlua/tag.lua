local tag = {}

tag.has = function(win, tag)
	for _, t in ipairs(win.tags) do
		if t == tag or t == tag..'*' then return true end
	end
	return false
end

tag.add = function(win, tag)
	if type(win) == "table" and win.address then
		hl.dsp.window.tag{ tag = '+'..tag, window = 'address'..win.address }
	else
		hl.window_rule({ name = "Add tag " .. tag .. ": " .. tostring(win), match = win, tag = '+'..tag })
	end
end

tag.remove = function(win, tag)
	if type(win) == "table" and win.address then
		hl.dsp.window.tag{ tag = '-'..tag, window = 'address'..win.address }
	else
		hl.window_rule({ name = "Remove tag " .. tag .. ": " .. tostring(win), match = win, tag = '-'..tag })
	end
end

tag.toggle = function(win, tag)
	if type(win) == "table" and win.address then
		hl.dsp.window.tag{ tag = tag, window = 'address'..win.address }
	else
		hl.window_rule({ name = "Toggle tag " .. tag .. ": " .. tostring(win), match = win, tag = tag })
	end
end

return tag
