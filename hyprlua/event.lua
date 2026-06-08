local event = {}

event.start = function(callback)
	hl.on('hyprland.start', callback)
end

event.window = {
	open = function(callback)
		hl.on('window.open', callback)
	end,

	close = function(callback)
		hl.on('window.close', callback)
	end
}

return event
