return function(application)
	application.rule = hl.window_rule {
		match = {
			initial_title = application.initial_title,
			initial_class = application.initial_class,
		},
		workspace = application.workspace_name,
	}

	function application:get_window()
		if self.initial_title then
			return hl.get_window('initialtitle:' .. self.initial_title)
		else
			return hl.get_window('initialclass:' .. self.initial_class)
		end
	end

	function application:open(rules)
		local cmd = self.cmd
		if type(cmd) == 'function' then
			cmd = cmd()
		end
		if type(cmd) == 'string' then
			return hl.dispatch(hl.dsp.exec_cmd(cmd, rules))
		end
	end

	bind({ main_mod, application.key }, function()
		local window = application:get_window()
		if not window then
			application.rule:set_enabled(true)
			application:open()
			return
		end

		local current_workspace = hl.get_active_special_workspace() or hl.get_active_workspace()
		if not current_workspace then return end

		if application.workspace_name == current_workspace.name then
			focus { workspace = hl.get_last_workspace() }
			return
		end

		focus { window = window }
	end)

	bind({ main_mod, 'SHIFT', application.key }, function()
		local window = application:get_window()
		if not window then
			application.rule:set_enabled(false)
			application:open()
			return
		end

		local current_workspace = hl.get_active_special_workspace() or hl.get_active_workspace()
		if not current_workspace then return end

		if current_workspace.name == application.workspace_name then
			move { window = window, workspace = hl.get_last_workspace() }
			return
		end

		if current_workspace == window.workspace then
			move { window = window, workspace = application.workspace_name }
		else
			move { window = window, workspace = current_workspace }
		end
	end)
end
