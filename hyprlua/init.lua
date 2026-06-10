hl.bind = require('hyprlua.bind')
hl.event = require('hyprlua.event')
hl.tag = require('hyprlua.tag')

hl.all = function(cmds)
	return table.concat(cmds, ' && ')
end

hl.run_when_network_is_up = function(cmd)
	return hl.all{ 'nm-online -q', cmd }
end
