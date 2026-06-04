local keys = require('keys')

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	bind({keys.mainMod, key}, hl.dsp.focus({ workspace = i }))
	bind({keys.mainMod, keys.SHIFT, key}, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
bind({keys.mainMod, keys.S}, hl.dsp.workspace.toggle_special("magic"))
bind({keys.mainMod, keys.SHIFT, keys.S}, hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
bind({keys.mainMod, keys.mouse_down}, hl.dsp.focus({ workspace = "e+1" }))
bind({keys.mainMod, keys.mouse_up}, hl.dsp.focus({ workspace = "e-1" }))
