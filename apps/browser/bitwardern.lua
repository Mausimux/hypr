local bitwarden_plugin_id = 'nngceckbapebfimnlniiiahkandclblb'

local window_match = {
	initial_class = '.*'..bitwarden_plugin_id..'.*',
}

hl.window_rule{
	match = window_match,
	tile = false,
	float = true,
	persistent_size = true,
}

tag.add(require('persistent_position.tag'), window_match)
