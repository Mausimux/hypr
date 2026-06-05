-- Close window
local closeWindowBind = bind({mainMod, C}, hl.dsp.window.close())

-- Toggle float
bind({mainMod, F}, hl.dsp.window.float({ action = "toggle" }))

-- Pseudo
bind({mainMod, P}, hl.dsp.window.pseudo())

-- Toggle split (dwindle only)
bind({mainMod, T}, hl.dsp.layout("togglesplit"))

-- Move focus with mainMod + arrow keys
bind({mainMod, H}, hl.dsp.focus({ direction = "left" }))
bind({mainMod, L}, hl.dsp.focus({ direction = "right" }))
bind({mainMod, K}, hl.dsp.focus({ direction = "up" }))
bind({mainMod, J}, hl.dsp.focus({ direction = "down" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
bind({mainMod, mouse_272}, hl.dsp.window.drag(), { mouse = true })
bind({mainMod, mouse_273}, hl.dsp.window.resize(), { mouse = true })
bind({mainMod, SHIFT, mouse_273}, function()
	hl.dispatch(hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "1" }))
	hl.dispatch(hl.dsp.window.resize())
end, { mouse = true })
bind({mainMod, SHIFT, mouse_273}, hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "false" }),
	{ release = true, mouse = true })
