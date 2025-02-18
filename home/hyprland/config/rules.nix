{
# WINDOW RULES
wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
        # IGNORE MAXIMIZE REQUESTS FROM APPS
        "suppressevent maximize, class:.*"

        # FIX SOME DRAGGING ISSUES WITH WAYLAND
        "nofocus, class:^$,title:^$,xwayland:1,floating:1, fullscreen:0, pinned:0"
        
        # KEEP DISCORD ON SCRATCHPAD
        "workspace special:discord silent, class:discord"

        # KEEP STEAM ON SCRATCHPAD
        "workspace special:steam silent, class: steam"
    ];
};

}
