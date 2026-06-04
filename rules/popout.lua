hl.window_rule({
	name = "Floating popouts",

	match = { tag = "popout" },

	tile = false,
	float = true,
	no_initial_focus = true,
	pin = true,
	content = "video",

	persistent_size = true,
})

local positions = {}

local function is_popout(win)
	for _i, tag in ipairs(win.tags) do
		if tag == 'popout*' then
			return true
		end
	end
	return false
end

local function key(win)
	return win.initial_title .. '|' .. win.initial_class
end

-- Load position when a popout window opens
hl.on('window.open', function(win)
	if not is_popout(win) then return end

	local pos = positions[key(win)]
	if not pos then return end

	local x, y = pos.x, pos.y
	if x and y then
		hl.dispatch(hl.dsp.window.move({ x = x, y = y, window = "address:" .. win.address }))
	end
end)

-- Save position when a popout window closes
hl.on('window.close', function(win)
	if not is_popout(win) then return end

	local x, y = win.at.x, win.at.y
	if x and y then
		positions[key(win)] = { x = x, y = y }
	end
end)

