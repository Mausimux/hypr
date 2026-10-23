local tag = require('hyprlua.tag')
local popout = require('popout')

return function(application)
	application.rule = hl.window_rule {
		match = {
			initial_title = application.initial_title,
			initial_class = application.initial_class,
		},
		workspace = application.workspace_name,
	}

	function application:get_window()
		local windows = hl.get_windows()
		for _, window in ipairs(windows) do
			if self.initial_title and window.initial_title ~= self.initial_title then
				goto continue
			end
			if self.initial_class and window.initial_class ~= self.initial_class then
				goto continue
			end
			if not tag.has(popout.tag_name, window) then
				return window
			end
			::continue::
		end
	end

	function application:open(rules)
		local command = self.command
		if type(command) == 'function' then
			command = command()
		end
		if type(command) == 'string' then
			return cmd(command, rules)()
		end
	end

	bind({ key.main_mod, application.key }, function()
		local window = application:get_window()
		if not window then
			application.rule:set_enabled(true)
			application:open()
			return
		end

		local current_workspace = get_current_workspace()
		if not current_workspace then return end

		if application.workspace_name == current_workspace.name then
			local previous_workspace = get_previous_workspace()
			if not previous_workspace then return end
			focus { workspace = previous_workspace }
			return
		end

		if window.active and window.workspace == current_workspace then
			move { window = window, workspace = application.workspace_name }
		end

		focus { window = window }
	end)

	bind({ key.main_mod, 'SHIFT', application.key }, function()
		local window = application:get_window()

		local current_workspace = get_current_workspace()
		if not current_workspace then return end

		if not window then
			if current_workspace.name == application.workspace_name then
				local previous_workspace = get_previous_workspace()
				if not previous_workspace then return end
				focus { workspace = previous_workspace }
				return
			end

			application.rule:set_enabled(false)
			application:open()
			return
		end

		if current_workspace.name == application.workspace_name then
			local previous_workspace = get_previous_workspace()
			if not previous_workspace then return end
			move { window = window, workspace = previous_workspace }
			return
		end

		if current_workspace == window.workspace then
			move { window = window, workspace = application.workspace_name, follow = false }
		else
			move { window = window, workspace = current_workspace }
		end
	end)
end
