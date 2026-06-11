local window_rule = hl.window_rule

return function(match, props)
	props.match = match

	return window_rule(props)
end
