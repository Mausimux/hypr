for i = 1, 10 do
	local key = i % 10
	bind({ main_mod, key }, hl.dsp.focus { workspace = i })
	bind({ main_mod, 'SHIFT', key }, hl.dsp.window.move { workspace = i })
end

bind({ main_mod, 'BACKSPACE' }, function()
	local previous_workspace = get_previous_workspace()
	if not previous_workspace then return end
	focus { workspace = previous_workspace }
end)
