{
    # RUN ON STARTUP
    wayland.windowManager.hyprland.settings = {
        exec-once =[
            # WAYBAR
            "waybar &"
            # NETWORK MANAGER APPLET
            "nm-applet --indicator &"
            # BLUETOOTH APPLET
            "blueman-applet &"
        ];
    };
}
