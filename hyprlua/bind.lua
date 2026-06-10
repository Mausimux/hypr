local bind = hl.bind

return function(keys, dispatcher, opts)
	if type(keys) == "table" then
		keys = table.concat(keys, " + ")
	end
	return bind(keys, dispatcher, opts)
end

