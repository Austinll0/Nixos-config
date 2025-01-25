{pkgs,...}:
{
    wayland.windowManager.hyprland = {
        enable = true;
        settings = {
            # import theme
            source = "~/.config/hypr/pimp.conf";
            
            # Monitors
            monitor = ",preffered,auto,1"

            # Programs
            "$terminal" = "kitty"
            "$fileManager" = "dolphin"
            
            # Autostart
            "exec-once" = [
                "bash ~/.config/hypr/start.sh"
            ]
            
            # Environment Variables
            env = [
                "XCURSOR_SIZE,24"
                "HYPRCURSOR_SIZE,24"
            ]


        };
    };
}

