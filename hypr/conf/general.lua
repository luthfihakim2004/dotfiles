-- See https://wiki.hyprland.org/Configuring/Variables/ for more
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,
        
        -- Utilizing your custom Lua variables safely:
        ["col.active_border"] = { 
            colors = { theme.color11, theme.color5 }, 
            angle = 45 
        },
        ["col.inactive_border"] = theme.color8,
        
        layout = "scrolling",
        resize_on_border = true,
    },
})
