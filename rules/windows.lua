window_rule({ class = '.*' }, {
	suppress_event = 'maximize',
})

window_rule({
	class = '^$',
	title = '^$',
	xwayland = true,
	float = true,
	fullscreen = false,
	pin = false,
}, {
	no_focus = true,
})

window_rule({ class = 'hyprland-run' }, {
	move = '20 monitor_h-120',
	float = true,
})

