local apps = require('apps')
local keys = require('keys')

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
bind({keys.mainMod, keys.Q}, hl.dsp.exec_cmd(apps.terminal))
local closeWindowBind = bind({keys.mainMod, keys.C}, hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
bind({keys.mainMod, keys.M},
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
bind({keys.mainMod, keys.E}, hl.dsp.exec_cmd(apps.fileManager))
bind({keys.mainMod, keys.F}, hl.dsp.window.float({ action = "toggle" }))
bind({keys.mainMod, keys.R}, hl.dsp.exec_cmd(apps.menu))
bind({keys.mainMod, keys.P}, hl.dsp.window.pseudo())
bind({keys.mainMod, keys.T}, hl.dsp.layout("togglesplit")) -- dwindle only

-- Move focus with mainMod + arrow keys
bind({keys.mainMod, keys.H}, hl.dsp.focus({ direction = "left" }))
bind({keys.mainMod, keys.L}, hl.dsp.focus({ direction = "right" }))
bind({keys.mainMod, keys.K}, hl.dsp.focus({ direction = "up" }))
bind({keys.mainMod, keys.J}, hl.dsp.focus({ direction = "down" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
bind({keys.mainMod, keys.mouse_272}, hl.dsp.window.drag(), { mouse = true })
bind({keys.mainMod, keys.mouse_273}, hl.dsp.window.resize(), { mouse = true })
bind({keys.mainMod, keys.mouse_273}, hl.dsp.window.resize(), { mouse = true })
bind({keys.mainMod, keys.SHIFT, keys.mouse_273}, function()
	hl.dispatch(hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "1" }))
	hl.dispatch(hl.dsp.window.resize())
end, { mouse = true })
bind({keys.mainMod, keys.SHIFT, keys.mouse_273}, hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "false" }),
	{ release = true, mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
bind({keys.XF86AudioRaiseVolume}, hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true })
bind({keys.XF86AudioLowerVolume}, hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true })
bind({keys.XF86AudioMute}, hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true })
bind({keys.XF86AudioMicMute}, hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true })
bind({keys.XF86MonBrightnessUp}, hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
bind({keys.XF86MonBrightnessDown}, hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
bind({keys.XF86AudioNext}, hl.dsp.exec_cmd("playerctl next"), { locked = true })
bind({keys.XF86AudioPause}, hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
bind({keys.XF86AudioPlay}, hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
bind({keys.XF86AudioPrev}, hl.dsp.exec_cmd("playerctl previous"), { locked = true })


