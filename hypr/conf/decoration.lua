-- See https://wiki.hyprland.org/Configuring/Variables/ for more
hl.config({

    decoration = {
        active_opacity = 0.8,
        inactive_opacity = 0.6,
        rounding = 20,
        rounding_power = 2,
        
        blur = {
            enabled = true,
            size = 3,
            passes = 2,
            vibrancy = 0.1696,
            ignore_opacity = true,
        },
        
        shadow = {
            enabled = false,
            -- offset = "3 5", -- Passed as a string to replicate old spatial spacing
            range = 4,
            render_power = 3,
            color = "rgba(000000bb)",
            color_inactive = "rgba(00000077)",
        },
    },
})
