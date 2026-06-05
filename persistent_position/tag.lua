local M = {}

M.tag = 'persistent_position'
M.dynamic_tag = M.tag .. '*'

M.toggle_tag = M.tag
M.add_tag = '+' .. M.tag
M.remove_tag = '-' .. M.tag

M.has_tag = function(win)
	for _, tag in ipairs(win.tags) do
		if tag == M.tag or tag == M.dynamic_tag then
			return true
		end
	end

	return false
end

return M
