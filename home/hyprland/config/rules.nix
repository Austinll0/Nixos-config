{
# WINDOW RULES
wayland.windowManager.hyprland.settings = {
    # ANONYMOUS RULES
    windowrule = [
 
        # KEEP DISCORD ON SCRATCHPAD
        "match:class discord, workspace special:discord silent"
        # KEEP STEAM ON SCRATCHPAD
        "match:class steam, workspace special:steam silent"
    ];

    # IGNORE MAXIMIZE REQUESTS FROM APPS
    "windowrule[supressing]" = {
        "match:class" = ".*";
        suppress_event = "fullscreen maximize";
    };

    # FIX SOME DRAGGING ISSUES WITH WAYLAND
    "windowrule[nofoc]" = {
        "match:class" = "^$";
        "match:title" = "^$";
        "match:xwayland" = "true";
        "match:float" = "true";
        "match:fullscreen" = "false";
        "match:pin" = "false";
        
        "no_focus" = "on";
    };
};

}
