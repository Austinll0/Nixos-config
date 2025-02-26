{
    wayland.windowManager.hyprland.settings = {
        #MONITOR CONFIG
        monitor = ", preffered, auto, 1"; #default, may want to config per host

        #ENVIRONMENT VARIABLES
        env = [
            "XCURSOR_SIZE,24"
            "HYPRCURSOR_SIZE,24"
        ];

        gestures = {
            workspace_swipe = true;
            workspace_swipe_fingers = 3;
        };

        input = {
            kb_layout = "us";
            follow_mouse = 1;
            touchpad = {
                natural_scroll = false;
            };

        };
        dwindle = {
            pseudotile = false;
            preserve_split = true;
        };
    };

}
