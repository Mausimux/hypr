return function(keys, dispatcher, opts)
	if type(keys) == "table" then
		keys = table.concat(keys, " + ")
	end
	return hl.bind(keys, dispatcher, opts)
end

