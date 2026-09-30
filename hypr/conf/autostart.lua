# Execute your favorite apps at launch
hl.on("hyprland.start", function () 
  hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")
  hl.exec_cmd("keepassxc")
  hl.exec_cmd("dbus-update-activation-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("/usr/libexec/xdg-desktop-portal-hyprland & /usr/libexec/xdg-desktop-portal")
  hl.exec_cmd("gentoo-pipewire-launcher & noctalia")
end)
