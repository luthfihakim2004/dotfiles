-- Example binds, see https://hyprland.org for more

-- For Noctalia binds
local ipc = "noctalia msg "

-- ALT key set as the modifier
local mainMod = "ALT"

-- 1. Actions & Executive Utilities
-- hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("wofi"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("kitty"))

hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + C", hl.dsp.layout( "togglesplit" ))

-- 2. Mouse Drag & Resize Layout (Note: hl.bindm keeps arguments separated)
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- 3. Screenshot Keybinds via Grimblast
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("grimblast --notify copysave area"))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("grimblast --notify copysave active"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("grimblast --notify copysave screen"))

-- 4. Native Session Logout Command (Fixed duplicated lines & syntax)
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exit())

-- 5. Window Focus Direction Navigation
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "d" }))

-- 6. Shift + Mouse-Wheel Window Shifting
hl.bind(mainMod .. " + SHIFT + mouse_down", hl.dsp.layout( "move +col" ))
hl.bind(mainMod .. " + SHIFT + mouse_up", hl.dsp.layout( "move -col" ))
hl.bind(mainMod .. " + CTRL + mouse_down", hl.dsp.layout( "colresize -conf" ))
hl.bind(mainMod .. " + CTRL + mouse_up", hl.dsp.layout( "colresize +conf" ))

-- 7. Hardware Media and Function Keys (Using hl.bindl so they work while locked)
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"), { locked = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"), { locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), { locked = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("XF86WLAN", hl.dsp.exec_cmd("nmcli radio wifi toggle"), { locked = true })
hl.bind("XF86Refresh", hl.dsp.exec_cmd("xdotool key F5"), { locked = true })

-- 8. Dynamic Workspace Assignment (Workspaces 1 to 10 loop)
local keys = {
    [1] = "1",
    [2] = "2",
    [3] = "3",
    [4] = "4",
    [5] = "5",
    [6] = "6",
    [7] = "7",
    [8] = "8",
    [9] = "9",
    [10] = "0",
}

for ws = 1, 10 do
    local key = keys[ws]

    hl.bind(mainMod .. " + " .. key,
        hl.dsp.focus({ workspace = ws }))

    hl.bind(mainMod .. " + SHIFT + " .. key,
        hl.dsp.window.move({ workspace = ws, follow = true }))
end

-- 9. Base Workspace Scrolling Actions
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))

-- 10. Gamemode Toggle Script Execution
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd("~/.config/hypr/scripts/gamemode.sh"))

-- 11. Noctalia core binds
hl.bind(mainMod .. "+D", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. "+Space", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center"))
hl.bind(mainMod .. "+Escape", hl.dsp.exec_cmd(ipc .. "settings-toggle"))
hl.bind("ALT + Tab", hl.dsp.exec_cmd(ipc .. "window-switcher"))
