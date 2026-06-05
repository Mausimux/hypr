bind = function(keys, dispatcher, opts)
	if type(keys) == "table" then
		keys = table.concat(keys, " + ")
	end
	hl.bind(keys, dispatcher, opts)
end
