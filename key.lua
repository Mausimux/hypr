-- Keys and keycodes that are awkward, long, or layout-dependent.
-- Common keys (letters, numbers, arrows, function keys, ...) are intentionally
-- left as literals at the bind sites so this table stays focused.
return {
	-- Modifiers
	main_mod = 'SUPER',

	-- Mouse buttons
	mouse = {
		left = 'mouse:272',
		right = 'mouse:273',
		middle = 'mouse:274',

		forward = 'mouse:277',
		back = 'mouse:278',

		scroll = {
			up = 'mouse_up',
			down = 'mouse_down',
		},

		side = {
			first = 'mouse:280',
			middle = 'mouse:281',
			last = 'CTRL + SHIFT + M',
		},
	},

	-- Audio
	audio = {
		volume = {
			up = 'XF86AudioRaiseVolume',
			down = 'XF86AudioLowerVolume',
			mute = 'XF86AudioMute',
		},

		mic = {
			mute = 'XF86AudioMicMute',
		},

		media = {
			next = 'XF86AudioNext',
			prev = 'XF86AudioPrev',
			play = 'XF86AudioPlay',
			pause = 'XF86AudioPause',
			stop = 'XF86AudioStop',
			rewind = 'XF86AudioRewind',
			forward = 'XF86AudioForward',
			eject = 'XF86Eject',
		},
	},

	-- Display
	display = {
		brightness = {
			up = 'XF86MonBrightnessUp',
			down = 'XF86MonBrightnessDown',
		},

		keyboard_brightness = {
			up = 'XF86KbdBrightnessUp',
			down = 'XF86KbdBrightnessDown',
		},

		toggle = 'XF86Display',
	},

	touchpad = {
		toggle = 'XF86TouchpadToggle',
	},

	-- System
	system = {
		power = 'XF86PowerOff',
		sleep = 'XF86Sleep',
		wifi = 'XF86WLAN',
		bluetooth = 'XF86Bluetooth',
	},

	apps = {
		calculator = 'XF86Calculator',
		mail = 'XF86Mail',
		home_page = 'XF86HomePage',
		search = 'XF86Search',
	},

	-- Layout-dependent keys
	ordinal = 'code:49',

	print = 'Print',
}
