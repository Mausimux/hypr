local native_bind = hl.bind

return function(keys, dispatcher, opts)
	if type(keys) == "table" then
		keys = table.concat(keys, " + ")
	end
	native_bind(keys, dispatcher, opts)
end
