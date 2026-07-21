require('workspace.scratchpad')

for i = 1, 10 do
	local key = i % 10
	bind({main_mod, key}, hl.dsp.focus { workspace = i })
	bind({main_mod, 'SHIFT', key}, hl.dsp.window.move { workspace = i })
end

