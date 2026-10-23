bind({ key.main_mod, key.mouse.right }, hl.dsp.window.resize(), { mouse = true })

bind({ key.main_mod, 'SHIFT', key.mouse.right }, hl.dsp.window.resize({ keep_aspect_ratio = true }),
	{ mouse = true })
