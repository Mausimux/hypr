local discord = {
	cmd = 'discord',
	initial_class = 'discord',
	workspace_name = 'discord',
}

discord.rule = hl.window_rule {
	match = { initial_class = discord.initial_class },
	workspace = discord.workspace_name,
}

function discord:get_window()
	return hl.get_window('initialclass:' .. self.initial_class)
end

function discord:open(rules)
	return hl.dispatch(hl.dsp.exec_cmd(self.cmd, rules))
end

bind({ main_mod, 'D' }, function()
	local window = discord:get_window()
	if not window then
		discord.rule:set_enabled(true)
		discord:open()
		return
	end

	if discord.workspace_name == hl.get_active_workspace().name then
		focus { workspace = hl.get_last_workspace() }
		return
	end

	focus { window = window }
end)

bind({ main_mod, 'SHIFT', 'D' }, function()
	local window = discord:get_window()
	if not window then
		discord.rule:set_enabled(false)
		discord:open()
		return
	end

	local current_workspace = hl.get_active_workspace()
	if not current_workspace then return end

	if current_workspace.name == discord.workspace_name then
		move { window = window, workspace = hl.get_last_workspace() }
		return
	end

	if current_workspace == window.workspace then
		move { window = window, workspace = discord.workspace_name }
	else
		move { window = window, workspace = current_workspace }
	end
end)

bind({ mouse_side_last }, hl.dsp.pass { window = 'initialclass:' .. discord.initial_class }, { auto_consuming = true })

popout.add { initial_title = 'Discord Popout', initial_class = discord.initial_class }
