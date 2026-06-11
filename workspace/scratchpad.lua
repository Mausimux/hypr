hl.config({ binds = {
	hide_special_on_workspace_change = true,
}})

-- Special workspace per workspace
bind({main_mod, 'S'}, function()
	hl.dispatch(hl.dsp.workspace.toggle_special(hl.get_active_workspace().id))
end)
bind({main_mod, 'SHIFT', 'S'}, function()
	hl.dispatch(hl.dsp.window.move({ workspace = 'special:' .. hl.get_active_workspace().id }))
end)


