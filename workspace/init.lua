for i = 1, 10 do
	local key = i % 10
	bind({main_mod, key}, hl.dsp.focus({ workspace = i }))
	bind({main_mod, 'SHIFT', key}, hl.dsp.window.move({ workspace = i }))
end

bind({main_mod, 'S'}, hl.dsp.workspace.toggle_special("magic"))
bind({main_mod, 'SHIFT', 'S'}, hl.dsp.window.move({ workspace = "special:magic" }))

