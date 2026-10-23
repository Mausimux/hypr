local directions = {
	H = 'left',
	J = 'down',
	K = 'up',
	L = 'right',
}

for bind_key, direction in pairs(directions) do
	bind({ key.main_mod, bind_key }, hl.dsp.focus { direction = direction })
	bind({ key.main_mod, 'SHIFT', bind_key }, hl.dsp.window.move { direction = direction })
end

bind({ key.main_mod, key.mouse.left }, hl.dsp.window.drag(), { mouse = true })
