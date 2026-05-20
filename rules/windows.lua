hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})


hl.window_rule({
    name = "Picture in picture",

    match = { initial_title = "Picture in picture" },

    tile = false,
    float = true,
    no_initial_focus = true,
    pin = true,
    content = "video",

    persistent_size = true,
})

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

