return function(keybind, dispatcher, opts)
	if type(keybind) == 'table' then
		keybind = table.concat(keybind, ' + ')
	end
	return hl.bind(keybind, dispatcher, opts)
end

