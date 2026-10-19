local history = {
	stack = {},
	going_back = false,
}

function history:push(workspace)
	if not workspace then return end

	for i = #self.stack, 1, -1 do
		if self.stack[i] == workspace.addressable_name then
			table.remove(self.stack, i)
		end
	end

	table.insert(self.stack, workspace.addressable_name)
end

function history:pop()
	if #self.stack > 1 then
		self.going_back = true
		return table.remove(self.stack)
	end
end

history:push(hl.get_active_workspace())

event.workspace.active(function(workspace)
	if history.going_back then
		history.going_back = false
		return
	end

	history:push(workspace)
end)

local function get_previous_workspace()
	history:pop()
	return history.stack[#history.stack]
end

bind({ main_mod, 'BACKSPACE' }, function()
	local previous_workspace = get_previous_workspace()
	if not previous_workspace then return end
	focus { workspace = previous_workspace }
end)

return get_previous_workspace
