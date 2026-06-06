-- Close window
local closeWindowBind = bind({main_mod, 'C'}, hl.dsp.window.close())

-- Toggle float
bind({main_mod, 'F'}, hl.dsp.window.float({ action = "toggle" }))

-- Pseudo
bind({main_mod, 'P'}, hl.dsp.window.pseudo())

-- Toggle split (dwindle only)
bind({main_mod, 'T'}, hl.dsp.layout("togglesplit"))

-- Move focus with 'mainMod' + arrow keys
bind({main_mod, 'H'}, hl.dsp.focus({ direction = "left" }))
bind({main_mod, 'L'}, hl.dsp.focus({ direction = "right" }))
bind({main_mod, 'K'}, hl.dsp.focus({ direction = "up" }))
bind({main_mod, 'J'}, hl.dsp.focus({ direction = "down" }))

-- Move window with 'mainMod' + arrow keys
bind({main_mod, 'SHIFT', 'H'}, hl.dsp.window.move({ direction = "left" }))
bind({main_mod, 'SHIFT', 'L'}, hl.dsp.window.move({ direction = "right" }))
bind({main_mod, 'SHIFT', 'K'}, hl.dsp.window.move({ direction = "up" }))
bind({main_mod, 'SHIFT', 'J'}, hl.dsp.window.move({ direction = "down" }))

-- Move/resize windows with 'mainMod' + LMB/RMB and dragging
bind({main_mod, left_click_drag}, hl.dsp.window.drag(), { mouse = true })
bind({main_mod, right_click_drag}, hl.dsp.window.resize(), { mouse = true })
bind({main_mod, 'SHIFT', right_click_drag}, function()
	hl.dispatch(hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "1" }))
	hl.dispatch(hl.dsp.window.resize())
end, { mouse = true })
bind({main_mod, 'SHIFT', right_click_drag}, hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "false" }),
	{ release = true, mouse = true })
