local M = {}

M.mainMod = "SUPER"

M.SUPER = "SUPER"
M.SHIFT = "SHIFT"
M.CTRL = "CTRL"
M.ALT = "ALT"

M.Q = "Q"
M.C = "C"
M.M = "M"
M.E = "E"
M.F = "F"
M.R = "R"
M.P = "P"
M.T = "T"
M.H = "H"
M.L = "L"
M.K = "K"
M.J = "J"
M.S = "S"
M.V = "V"

for i = 0, 9 do
	M[tostring(i)] = tostring(i)
end

M.mouse_down = "mouse_down"
M.mouse_up = "mouse_up"
M.mouse_272 = "mouse:272"
M.mouse_273 = "mouse:273"
M.mouseSideFront = "mouse:280"
M.mouseSideMiddle = "mouse:281"
M.mouseSideBack = "mouse:282"

M.Print = "Print"

M.XF86AudioRaiseVolume = "XF86AudioRaiseVolume"
M.XF86AudioLowerVolume = "XF86AudioLowerVolume"
M.XF86AudioMute = "XF86AudioMute"
M.XF86AudioMicMute = "XF86AudioMicMute"
M.XF86MonBrightnessUp = "XF86MonBrightnessUp"
M.XF86MonBrightnessDown = "XF86MonBrightnessDown"
M.XF86AudioNext = "XF86AudioNext"
M.XF86AudioPause = "XF86AudioPause"
M.XF86AudioPlay = "XF86AudioPlay"
M.XF86AudioPrev = "XF86AudioPrev"

return M
