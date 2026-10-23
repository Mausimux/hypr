for i = 1, 10 do
	local bind_key = i % 10
	bind({ key.main_mod, bind_key }, hl.dsp.focus { workspace = i })
	bind({ key.main_mod, 'SHIFT', bind_key }, hl.dsp.window.move { workspace = i })
end

bind({ key.main_mod, 'BACKSPACE' }, function()
	local previous_workspace = get_previous_workspace()
	if not previous_workspace then return end
	focus { workspace = previous_workspace }
end)
