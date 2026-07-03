local persistent_position_tag = require('persistent_position.tag')

local cache_dir = os.getenv('HOME') .. '/.cache/hypr'
local save_path = cache_dir .. '/persistent_position'

local function load_positions()
	local positions = {}

	os.execute('mkdir -p ' .. cache_dir)
	local file = io.open(save_path, 'r')
	if not file then return positions end

	for line in file:lines() do
		local identifier, x, y = line:match('^(.-)\t(%-?%d+)\t(%-?%d+)$')
		if identifier and x and y then
			positions[identifier] = { x = tonumber(x), y = tonumber(y) }
		end
	end

	file:close()

	return positions
end

local positions = load_positions()

local function identifier(win)
	return win.initial_title .. '|' .. win.initial_class
end

local function save_position(window, x, y)
	local identifier = identifier(window)
	local current_position = positions[identifier]

	if current_position and current_position.x == x and current_position.y == y then
		return
	end

	positions[identifier] = { x = x, y = y}

	os.execute('mkdir -p ' .. cache_dir)
	local file = io.open(save_path, 'w')
	if not file then return end

	for identifier, position in pairs(positions) do
		file:write(string.format('%s\t%d\t%d\n', identifier, position.x, position.y))
	end

	file:close()
end

event.window.open(function(win)
	if not tag.has(persistent_position_tag, win) then return end

	local position = positions[identifier(win)]
	if not position then return end

	local x, y = position.x, position.y
	if x and y then
		hl.dispatch(hl.dsp.window.move({ x = x, y = y, window = 'address:' .. win.address }))
	end
end)

event.window.close(function(win)
	if not tag.has(persistent_position_tag, win) then return end

	local x, y = win.at.x, win.at.y
	if x and y then
		save_position(win, x, y)
	end
end)

