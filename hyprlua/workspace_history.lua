local cache_dir = os.getenv('HOME') .. '/.cache/hypr/'
local save_path = cache_dir .. 'workspace_history'

local history = {
	stack = {},
	going_back = false,
}

local file = io.open(save_path, 'r')
if file then
	local lines = file:read('*a')
	file:close()
	for line in lines:gmatch('[^\r\n]+') do
		if #line > 0 then
			table.insert(history.stack, line)
		end
	end
end

event.config.unload(function()
	os.execute('mkdir -p' .. cache_dir)
	local file = io.open(save_path, 'w')
	if not file then return end
	for _, workspace in ipairs(history.stack) do
		file:write(workspace .. '\n')
	end
	file:close()
end)

function history:push(workspace)
	if not workspace then return end
	workspace = workspace.addressable_name or workspace

	for i = #self.stack, 1, -1 do
		if self.stack[i] == workspace then
			table.remove(self.stack, i)
		end
	end

	table.insert(self.stack, workspace)
end

function history:pop()
	if #self.stack > 1 then
		self.going_back = true
		return table.remove(self.stack)
	end
end

history:push(hl.get_active_workspace() or '1')

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
