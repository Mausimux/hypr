return {

has_tag = function(win, tag)
	if win.tags[tag] or win.tags[tag..'*'] then return true end
	return false
end,

add_tag = function(win, tag)
	hl.dsp.window.tag{ tag = '+'..tag, window = 'address'..win.address }
end,

del_tag = function(win, tag)
	hl.dsp.window.tag{ tag = '-'..tag, window = 'address'..win.address }
end,

toggle_tag = function(win, tag)
	hl.dsp.window.tag{ tag = tag, window = 'address'..win.address }
end,

}
