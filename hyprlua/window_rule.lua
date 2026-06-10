local window_rule = hl.window_rule

return function(name, match, props)
	props.name = name
	props.match = match

	return window_rule(props)
end
