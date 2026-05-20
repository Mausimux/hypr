-- "to get rid of the black border around ur screenshots" - choco98
-- (https://discord.com/channels/961691461554950145/967398886530515067/1496929329555312659)
hl.layer_rule({
	name = "No animation for selection",
	match = { namespace = "selection" },
	no_anim = true,
})
