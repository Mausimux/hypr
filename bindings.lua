local apps = require('apps')
local keys = require('keys')

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(keys.mainMod .. " + Q", hl.dsp.exec_cmd(apps.terminal))
local closeWindowBind = hl.bind(keys.mainMod .. " + C", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(keys.mainMod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(keys.mainMod .. " + E", hl.dsp.exec_cmd(apps.fileManager))
hl.bind(keys.mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(keys.mainMod .. " + R", hl.dsp.exec_cmd(apps.menu))
hl.bind(keys.mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(keys.mainMod .. " + T", hl.dsp.layout("togglesplit")) -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(keys.mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(keys.mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(keys.mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(keys.mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(keys.mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(keys.mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(keys.mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(keys.mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(keys.mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(keys.mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(keys.mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(keys.mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(keys.mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(keys.mainMod .. " + SHIFT + mouse:273", function()
	hl.dispatch(hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "1" }))
	hl.dispatch(hl.dsp.window.resize())
end, { mouse = true })
hl.bind(keys.mainMod .. " + SHIFT + mouse:273", hl.dsp.window.set_prop({ prop = "keep_aspect_ratio", value = "false" }),
	{ release = true, mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Screenshot
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m active -m output --clipboard-only"))
hl.bind(keys.mainMod .. " + Print", hl.dsp.exec_cmd("hyprshot -m active -m window --clipboard-only"))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))

-- Discord mute
hl.bind(keys.mouseSideBack, hl.dsp.pass({ window = "class:discord" }), { non_consuming = true })

-- Blue light filter
hl.bind(keys.mainMod .. " + XF86AudioRaiseVolume", hl.dsp.exec_cmd("hyprctl hyprsunset temperature +250"),
	{ locked = true, repeating = true })
hl.bind(keys.mainMod .. " + XF86AudioLowerVolume", hl.dsp.exec_cmd("hyprctl hyprsunset temperature -250"),
	{ locked = true, repeating = true })
hl.bind(keys.mainMod .. " + XF86AudioMute", hl.dsp.exec_cmd("hyprctl hyprsunset temperature 6000"),
	{ locked = true, repeating = true })
