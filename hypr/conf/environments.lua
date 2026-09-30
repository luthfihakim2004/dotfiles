-- XDG Desktop Portal
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- QT
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
-- hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
-- hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
-- hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- GTK
-- hl.env("GDK_SCALE", "1")

-- Browser
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("AQ_MGPU_NO_EXPLICIT", "1")
hl.env("__NV_PRIME_RENDER_OFFLOAD", "1")

-- Set the cursor size for xcursor
hl.env("XCURSOR_SIZE", "24")

-- Disable appimage launcher by default
hl.env("APPIMAGELAUNCHER_DISABLE", "1")

-- OZONE
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("OZONE_PLATFORM", "wayland")

-- For KVM virtual machines
hl.env("WLR_NO_HARDWARE_CURSORS", "1")
-- hl.env("WLR_RENDERER_ALLOW_SOFTWARE", "1")

-- NVIDIA (https://hypr.land)
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("__GL_VRR_ALLOWED", "1")
hl.env("WLR_DRM_NO_ATOMIC", "1")
hl.env("NVD_BACKEND", "direct")
hl.env("AQ_DRM_DEVICES", "/dev/dri/card0:/dev/dri/card1")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- For rootless Docker
hl.env("DOCKER_HOST", "unix://" .. os.getenv("XDG_RUNTIME_DIR") .. "/docker.sock")
hl.env("DOCKER_SOCK", os.getenv("XDG_RUNTIME_DIR") .. "/docker.sock")
hl.env("DOCKER_BUILDKIT", "1")
