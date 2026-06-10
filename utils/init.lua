local M = {}

M.all = function(cmds)
	return table.concat(cmds, ' && ')
end

M.run_when_network_is_up = function(cmd)
	return M.all{ 'nm-online -q', cmd }
end

return M
