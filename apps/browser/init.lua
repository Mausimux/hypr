require('apps.browser.bitwardern')

local browser = {
	cmd = 'brave-origin',
	initial_class = 'brave-origin',
	workspace_name = 'browser',
}
browser.rule = hl.window_rule {
	match = { initial_class = browser.initial_class },
	workspace = browser.workspace_name,
}

function browser:get_window()
	return hl.get_window('initialclass:' .. self.initial_class)
end

function browser:open(rules)
	return hl.dispatch(hl.dsp.exec_cmd(self.cmd, rules))
end

bind({ main_mod, 'B' }, function()
	local window = browser:get_window()
	if not window then
		browser.rule:set_enabled(true)
		browser:open()
		return
	end

	if browser.workspace_name == hl.get_active_workspace().name then
		focus { workspace = hl.get_last_workspace() }
		return
	end

	focus { window = window }
end)

bind({ main_mod, 'SHIFT', 'B' }, function()
	local window = browser:get_window()
	if not window then
		browser.rule:set_enabled(false)
		browser:open()
		return
	end

	local current_workspace = hl.get_active_workspace()
	if not current_workspace then return end

	if current_workspace.name == browser.workspace_name then
		move { window = window, workspace = hl.get_last_workspace() }
		return
	end

	if current_workspace == window.workspace then
		move { window = window, workspace = browser.workspace_name }
	else
		move { window = window, workspace = current_workspace }
	end
end)
