bind({mouse_side_last}, hl.dsp.pass({ window = "class:discord" }), { non_consuming = true })

hl.window_rule({
    name = "Tag Discord Popout",
    match = { initial_title = "Discord Popout", class = "discord" },
    tag = "popout",
})
