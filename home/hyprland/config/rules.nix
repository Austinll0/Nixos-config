{
# WINDOW RULES
wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
        # IGNORE MAXIMIZE REQUESTS FROM APPS
        "supressevent maximize, class:.*"

        # FIX SOME DRAGGING ISSUES WITH WAYLAND
        "nofocus, class:^$,title:^$,xwayland:1,floating:1, fullscreen:0, pinned:0"

    ];
};

}
