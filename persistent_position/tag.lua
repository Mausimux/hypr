local tag_api = require('hyprlua.tag')

local M = {}

M.tag = 'persistent_position'
M.dynamic_tag = M.tag .. '*'

M.toggle_tag = M.tag
M.add_tag = '+' .. M.tag
M.remove_tag = '-' .. M.tag

M.has_tag = function(win)
	return tag_api.has_tag(win, M.tag)
end

return M
