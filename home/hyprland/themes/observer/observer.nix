{
    wayland.windowManager.hyprland.settings = {
        general = {
            gaps_in = 2;
            gaps_out = 5;
            border_size = 2;
            "col.active_border" = "rgb(beb7cc)";
            "col.inactive_border" = "rgb(171619)";
            windowrulev2 = "noborder, fullscreen:1";
        };



        animations = {
          enabled = true;
          bezier = [
            "easeOutQuint, 0.23, 1,0.32, 1"
            "easeInOutCubic, 0.65, 0.05, 0.36, 1"
            "linear, 0, 0, 1, 1"
            "almostLinear, 0.5, 0.5, 0.75, 1"
            "quick, 0.15, 0, 0.1, 1"
          ];
          animation = [
            "global, 1, 10, default"
            "animation = border, 1, 5.39, easeOutQuint"
            "animation = windows, 1, 4.79, easeOutQuint"
            "animation = windowsIn, 1, 4.1, easeOutQuint, popin 87%"
            "animation = windowsOut, 1, 1.49, linear, popin 87%"
            "animation = fadeIn, 1, 1.73, almostLinear"
            "animation = fadeOut, 1, 1.46, almostLinear"
            "animation = fade, 1, 3.03, quick"
            "animation = layers, 1, 3.81, easeOutQuint"
            "animation = layersIn, 1, 4, easeOutQuint, fade"
            "animation = layersOut, 1, 1.5, linear, fade"
            "animation = fadeLayersIn, 1, 1.79, almostLinear"
            "animation = fadeLayersOut, 1, 1.39, almostLinear"
            "animation = workspaces, 1, 1.94, almostLinear, fade"
            "animation = workspacesIn, 1, 1.21, almostLinear, fade"
            "animation = workspacesOut, 1, 1.94, almostLinear, fade"
          ];
        };
        decoration = {
            active_opacity = 1.0;
            inactive_opacity = 0.9;
            rounding = 5;
            blur = {
                enabled = true;
                size = 3;
                passes = 1;
                ignore_opacity = true;
                new_optimizations = true;
            };
            shadow = {
                enabled = false;
            };
        };
    };
}

