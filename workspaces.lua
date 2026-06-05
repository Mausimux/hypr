-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	bind({main_mod, key}, hl.dsp.focus({ workspace = i }))
	bind({main_mod, 'SHIFT', key}, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
bind({main_mod, 'S'}, hl.dsp.workspace.toggle_special("magic"))
bind({main_mod, 'SHIFT', 'S'}, hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
bind({main_mod, scroll_down}, hl.dsp.focus({ workspace = "e+1" }))
bind({main_mod, scroll_up}, hl.dsp.focus({ workspace = "e-1" }))
