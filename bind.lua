bind = function(keys, dispatcher, opts)
	if type(keys) == "table" then
		for i, v in ipairs(keys) do
			keys[i] = tostring(v)
		end
		keys = table.concat(keys, " + ")
	end
	hl.bind(keys, dispatcher, opts)
end
