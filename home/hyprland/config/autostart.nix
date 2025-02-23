{
    # RUN ON STARTUP
    wayland.windowManager.hyprland.settings = {
        exec-once =[
            # Wall paper
            "hyprpaper"
            # WAYBAR
            "waybar &"
            # NETWORK MANAGER APPLET
            "nm-applet --indicator &"
            # BLUETOOTH APPLET
            "blueman-applet &"
        ];
    };
}
