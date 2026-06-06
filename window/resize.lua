bind({main_mod, right_click_drag}, hl.dsp.window.resize(), { mouse = true })

bind({main_mod, 'SHIFT', right_click_drag}, function()
	hl.dispatch(hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "1" }))
	hl.dispatch(hl.dsp.window.resize())
end, { mouse = true })
bind({main_mod, 'SHIFT', right_click_drag}, hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "false" }),
	{ release = true, mouse = true })

