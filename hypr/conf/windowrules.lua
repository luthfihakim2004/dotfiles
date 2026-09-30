-- See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
-- Jika lebih lebih besar dr global harus dioverride
-- =========================================================================
-- WINDOW RULES
-- =========================================================================

hl.window_rule({
    name = "windowrule-1",
    opacity = "1.0 override 0.5 override",
    match = { class = "vivaldi-stable" },
})

hl.window_rule({
    name = "windowrule-1",
    opacity = "1.0 override 0.5 override",
    match = { class = "floorp" },
})

hl.window_rule({
    name = "windowrule-2",
    opacity = "0.85 override 0.5 override",
    match = { class = "Spotify" },
})

hl.window_rule({
    name = "windowrule-3",
    opacity = "1.0 override 0.5 override",
    match = { class = "vesktop" },
})

hl.window_rule({
    name = "windowrule-4",
    opacity = "1.0 override 0.5 override",
    match = { class = "libreoffice-writer" },
})

-- Xwayland Video Bridge Fix (Screensharing utility hidden container optimization)
hl.window_rule({
    name = "windowrule-5",
    opacity = "0.0 override",
    no_anim = true,
    no_initial_focus = true,
    max_size = "1 1",
    no_blur = true,
    no_focus = true,
    match = { class = "^(xwaylandvideobridge)$" },
})

-- Noctalia
hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})

-- =========================================================================
-- LAYER RULES (Status bars, launchers, notification daemons)
-- =========================================================================

-- Optional: Waybar blur (uncomment if you use waybar)
-- hl.layer_rule({ blur = true, match = { namespace = "waybar" } })

hl.layer_rule({
    name = "layerrule-1",
    blur = true,
    ignore_alpha = 0,
    match = { namespace = "wofi" },
})

hl.layer_rule({
    name = "layerrule-2",
    blur = true,
    ignore_alpha = 0,
    match = { namespace = "notifications" },
})

hl.layer_rule({
    name = "layerrule-3",
    blur = true,
    ignore_alpha = 0,
    match = { namespace = "swaync-notification-window" },
})

hl.layer_rule({
    name = "layerrule-4",
    blur = true,
    ignore_alpha = 0,
    match = { namespace = "swaync-control-center" },
})

hl.layer_rule({
    name = "layerrule-5",
    blur = true,
    match = { namespace = "logout_dialog" },
})

hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})
