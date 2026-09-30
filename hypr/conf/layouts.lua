hl.config({
    -- 1. Dwindle Layout Setup
    dwindle = {
        preserve_split = true, -- Retain split orientation during actions
    },

    -- 2. Master Layout Setup (Uncomment parameters inside if needed)
    master = {
        -- new_status = "master",
    },

    -- 3. Native Infinite Scrolling Layout Settings (Hyprland 0.54+)
    scrolling = {
        fullscreen_on_one_column = true,
        column_width = 0.7, -- Converted explicitly to float number precision
        focus_fit_method = 1,
        follow_focus = true,
        follow_min_visible = 0.2,
        explicit_column_widths = "0.333, 0.5, 0.667, 1.0",
        wrap_focus = true,
        wrap_swapcol = true,
        direction = "right",
    },
})
