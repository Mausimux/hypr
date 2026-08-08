bind({main_mod, right_click_drag}, hl.dsp.window.resize(), { mouse = true })

bind({main_mod, 'SHIFT', right_click_drag}, hl.dsp.window.resize({keep_aspect_ratio = true}), { mouse = true })
