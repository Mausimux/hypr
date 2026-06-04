hl.window_rule({
    name = "Floating popouts",

    match = { tag = "popout" },

    tile = false,
    float = true,
    no_initial_focus = true,
    pin = true,
    content = "video",

    persistent_size = true,
})
