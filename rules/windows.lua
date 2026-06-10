window_rule("suppress-maximize-events", { class = ".*" }, {
    suppress_event = "maximize",
})

window_rule("fix-xwayland-drags", {
    class      = "^$",
    title      = "^$",
    xwayland   = true,
    float      = true,
    fullscreen = false,
    pin        = false,
}, {
    no_focus = true,
})

window_rule("move-hyprland-run", { class = "hyprland-run" }, {
    move  = "20 monitor_h-120",
    float = true,
})

