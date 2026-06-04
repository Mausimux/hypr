local keys = require('keys')

-- Close window
local closeWindowBind = bind({keys.mainMod, keys.C}, hl.dsp.window.close())

-- Toggle float
bind({keys.mainMod, keys.F}, hl.dsp.window.float({ action = "toggle" }))

-- Pseudo
bind({keys.mainMod, keys.P}, hl.dsp.window.pseudo())

-- Toggle split (dwindle only)
bind({keys.mainMod, keys.T}, hl.dsp.layout("togglesplit"))

-- Move focus with mainMod + arrow keys
bind({keys.mainMod, keys.H}, hl.dsp.focus({ direction = "left" }))
bind({keys.mainMod, keys.L}, hl.dsp.focus({ direction = "right" }))
bind({keys.mainMod, keys.K}, hl.dsp.focus({ direction = "up" }))
bind({keys.mainMod, keys.J}, hl.dsp.focus({ direction = "down" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
bind({keys.mainMod, keys.mouse_272}, hl.dsp.window.drag(), { mouse = true })
bind({keys.mainMod, keys.mouse_273}, hl.dsp.window.resize(), { mouse = true })
bind({keys.mainMod, keys.SHIFT, keys.mouse_273}, function()
	hl.dispatch(hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "1" }))
	hl.dispatch(hl.dsp.window.resize())
end, { mouse = true })
bind({keys.mainMod, keys.SHIFT, keys.mouse_273}, hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "false" }),
	{ release = true, mouse = true })
