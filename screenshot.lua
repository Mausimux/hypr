hl.bind(
	{ 'Print' },
	hl.dsp.exec_cmd("hyprshot -m active -m output --clipboard-only")
)
hl.bind(
	{ main_mod, 'Print' },
	hl.dsp.exec_cmd("hyprshot -m active -m window --clipboard-only")
)
hl.bind(
	{ 'SHIFT', 'Print' },
	hl.dsp.exec_cmd("hyprshot -m region --clipboard-only")
)

-- Disable animation on selection overlay to avoid black borders around screenshots
-- https://discord.com/channels/961691461554950145/967398886530515067/1496929329555312659
hl.layer_rule({
	name = "No animation for selection",
	match = { namespace = "selection" },
	no_anim = true,
})
