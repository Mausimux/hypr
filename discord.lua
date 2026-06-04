local keys = require('keys')

bind({keys.mouseSideBack}, hl.dsp.pass({ window = "class:discord" }), { non_consuming = true })

hl.window_rule({
    name = "Discord Popout",

    match = { initial_title = "Discord Popout", class = "discord" },

    tile = false,
    float = true,
    no_initial_focus = true,
    pin = true,
    content = "video",

    persistent_size = true,
})
