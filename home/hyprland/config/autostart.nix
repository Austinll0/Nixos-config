{
    # RUN ON STARTUP
    wayland.windowManager.hyprland.settings = {
        exec-once =[
            # WALL PAPER MANAGER
            "swww init &"
            "swww img ~/Wallpapers/observer.png"
            # WAYBAR
            "waybar &"
            # NETWORK MANAGER APPLET
            "nm-applet --indicator &"
            # BLUETOOTH APPLET
            "blueman-applet &"
        ];
    };
}
