local tag = require('persistent_position.tag')

local positions = {}

local function identifier(win)
	return win.initial_title .. '|' .. win.initial_class
end

hl.event.window.open(function(win)
	if not tag.has_tag(win) then return end

	local position = positions[identifier(win)]
	if not position then return end

	local x, y = position.x, position.y
	if x and y then
		hl.dispatch(hl.dsp.window.move({ x = x, y = y, window = "address:" .. win.address }))
	end
end)

hl.event.window.close(function(win)
	if not tag.has_tag(win) then return end

	local x, y = win.at.x, win.at.y
	if x and y then
		positions[identifier(win)] = { x = x, y = y }
	end
end)
