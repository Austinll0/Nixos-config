{
    # RUN ON STARTUP
    wayland.windowManager.hyprland.settings = {
        exec-once =[
            # WALL PAPER MANAGER
            "swww init &"
            "sleep 1" #small delay so sww can startup
            "swww img ~/.dotfiles/Nixos-config/home/themes/observer/wallpaper.png"
            # WAYBAR
            "waybar &"
            # NETWORK MANAGER APPLET
            "nm-applet --indicator &"
            # BLUETOOTH APPLET
            "blueman-applet &"
        ];
    };
}
