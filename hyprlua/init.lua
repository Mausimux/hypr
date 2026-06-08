require('hyprlua.bind')
event = require('hyprlua.event')

all = function(cmds)
	return table.concat(cmds, ' && ')
end

run_when_network_is_up = function(cmd)
	return all{ 'nm-online -q', cmd }
end
