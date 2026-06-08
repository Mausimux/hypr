return {
	start = function(callback)
		hl.on('hyprland.start', callback)
	end,

	shutdown = function(callback)
		hl.on('hyprland.shutdown', callback)
	end,

	window = {
		open = function(callback)
			hl.on('window.open', callback)
		end,

		open_early = function(callback)
			hl.on('window.open_early', callback)
		end,

		close = function(callback)
			hl.on('window.close', callback)
		end,

		destroy = function(callback)
			hl.on('window.destroy', callback)
		end,

		kill = function(callback)
			hl.on('window.kill', callback)
		end,

		active = function(callback)
			hl.on('window.active', callback)
		end,

		urgent = function(callback)
			hl.on('window.urgent', callback)
		end,

		title = function(callback)
			hl.on('window.title', callback)
		end,

		class = function(callback)
			hl.on('window.class', callback)
		end,

		pin = function(callback)
			hl.on('window.pin', callback)
		end,

		fullscreen = function(callback)
			hl.on('window.fullscreen', callback)
		end,

		update_rules = function(callback)
			hl.on('window.update_rules', callback)
		end,

		move_to_workspace = function(callback)
			hl.on('window.move_to_workspace', callback)
		end,
	},

	layer = {
		opened = function(callback)
			hl.on('layer.opened', callback)
		end,

		closed = function(callback)
			hl.on('layer.closed', callback)
		end,
	},

	monitor = {
		added = function(callback)
			hl.on('monitor.added', callback)
		end,

		removed = function(callback)
			hl.on('monitor.removed', callback)
		end,

		focused = function(callback)
			hl.on('monitor.focused', callback)
		end,

		layout_changed = function(callback)
			hl.on('monitor.layout_changed', callback)
		end,
	},

	workspace = {
		active = function(callback)
			hl.on('workspace.active', callback)
		end,

		special_active = function(callback)
			hl.on('workspace.special_active', callback)
		end,

		created = function(callback)
			hl.on('workspace.created', callback)
		end,

		removed = function(callback)
			hl.on('workspace.removed', callback)
		end,

		move_to_monitor = function(callback)
			hl.on('workspace.move_to_monitor', callback)
		end,
	},

	config = {
		reloaded = function(callback)
			hl.on('config.reloaded', callback)
		end,
	},

	keybinds = {
		submap = function(callback)
			hl.on('keybinds.submap', callback)
		end,
	},

	screenshare = {
		state = function(callback)
			hl.on('screenshare.state', callback)
		end,
	},
}
