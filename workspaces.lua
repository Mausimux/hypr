-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	bind({mainMod, key}, hl.dsp.focus({ workspace = i }))
	bind({mainMod, SHIFT, key}, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
bind({mainMod, S}, hl.dsp.workspace.toggle_special("magic"))
bind({mainMod, SHIFT, S}, hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
bind({mainMod, mouse_down}, hl.dsp.focus({ workspace = "e+1" }))
bind({mainMod, mouse_up}, hl.dsp.focus({ workspace = "e-1" }))
