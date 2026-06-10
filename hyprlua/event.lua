local event = hl.event or {}

event.start = function(callback)
	hl.on('hyprland.start', callback)
end

event.shutdown = function(callback)
	hl.on('hyprland.shutdown', callback)
end

event.window = {}
event.window.open = function(callback)
	hl.on('window.open', callback)
end

event.window.open_early = function(callback)
	hl.on('window.open_early', callback)
end

event.window.close = function(callback)
	hl.on('window.close', callback)
end

event.window.destroy = function(callback)
	hl.on('window.destroy', callback)
end

event.window.kill = function(callback)
	hl.on('window.kill', callback)
end

event.window.active = function(callback)
	hl.on('window.active', callback)
end

event.window.urgent = function(callback)
	hl.on('window.urgent', callback)
end

event.window.title = function(callback)
	hl.on('window.title', callback)
end

event.window.class = function(callback)
	hl.on('window.class', callback)
end

event.window.pin = function(callback)
	hl.on('window.pin', callback)
end

event.window.fullscreen = function(callback)
	hl.on('window.fullscreen', callback)
end

event.window.update_rules = function(callback)
	hl.on('window.update_rules', callback)
end

event.window.move_to_workspace = function(callback)
	hl.on('window.move_to_workspace', callback)
end

event.layer = {}
event.layer.opened = function(callback)
	hl.on('layer.opened', callback)
end

event.layer.closed = function(callback)
	hl.on('layer.closed', callback)
end

event.monitor = {}
event.monitor.added = function(callback)
	hl.on('monitor.added', callback)
end

event.monitor.removed = function(callback)
	hl.on('monitor.removed', callback)
end

event.monitor.focused = function(callback)
	hl.on('monitor.focused', callback)
end

event.monitor.layout_changed = function(callback)
	hl.on('monitor.layout_changed', callback)
end

event.workspace = {}
event.workspace.active = function(callback)
	hl.on('workspace.active', callback)
end

event.workspace.special_active = function(callback)
	hl.on('workspace.special_active', callback)
end

event.workspace.created = function(callback)
	hl.on('workspace.created', callback)
end

event.workspace.removed = function(callback)
	hl.on('workspace.removed', callback)
end

event.workspace.move_to_monitor = function(callback)
	hl.on('workspace.move_to_monitor', callback)
end

event.config = {}
event.config.reloaded = function(callback)
	hl.on('config.reloaded', callback)
end

event.keybinds = {}
event.keybinds.submap = function(callback)
	hl.on('keybinds.submap', callback)
end

event.screenshare = {}
event.screenshare.state = function(callback)
	hl.on('screenshare.state', callback)
end

return event
