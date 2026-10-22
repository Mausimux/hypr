return function(cmd, rules)
	return function()
		hl.dispatch(hl.dsp.exec_cmd(cmd, rules))
	end
end
