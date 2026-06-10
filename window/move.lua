local directions = {
	H = 'left',
	J = 'down',
	K = 'up',
	L = 'right',
}

for key, direction in pairs(directions) do
	hl.bind({main_mod, key}, hl.dsp.focus({ direction = direction}))
	hl.bind({main_mod, 'SHIFT', key}, hl.dsp.window.move({ direction = direction}))
end

hl.bind({main_mod, left_click_drag}, hl.dsp.window.drag(), { mouse = true })
