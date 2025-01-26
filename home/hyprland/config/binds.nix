{
    wayland.windowManager.hyprland.settings = {
        "$terminal" = "kitty";
        "$fileManager" = "dolphin";
        "$menu" = "rofi -show drun -show-icons";
        "$mainMod" = "SUPER";
        # KEYBOARD BINDS
        bind = [
            # BASIC COMMMANDS
            "$mainMod, Q, exec, $terminal"        
            "$mainMod, C, killactive," 
            "$mainMod, M, exit,"
            "$mainMod, E, exec, $fileManager"
            "$mainMod, V, togglefloating"
            "$mainMod, P, pseudo, #dwindle"
            "$mainMod, J, togglesplit, #dwindle"
            "$mainMod, super_l, exec, $menu"

            # SPECIAL WORKSPACE
            "$mainMod, S, togglespecialworkspace, magic"
            "$mainMod SHIFT, S, movetoworkspace, special:magic"

            # CHANGE ACTIVE WINDOW
            "$mainMod, left, movefocus, l"
            "$mainMod, right, movefocus, r"
            "$mainMod, up, movefocus, u"
            "$mainMod, down, movefocus, d"

            # MOVE WINDOW IN WORKSPACE
            "$mainMod SHIFT, up, movewindow, u"
            "$mainMod SHIFT, down, movewindow, d"
            "$mainMod SHIFT, left, movewindow, l"
            "$mainMod SHIFT, right, movewindow, r"

            # CHANGE ACTIVE WORKSPACE BY 1
            "$mainMod CTRL, l, workspace, e-1"
            "$mainMod CTRL, r, workspace, e+1"

            # MOVE WINDOW OVER 1 WORKSPACE
            "$mainMod SHIFT CTRL, left, movetoworkspace, e-1"
            "$mainMod SHIFT CTRL, right, movetoworkspace, e+1"
            
            # MOVE TO SPECIFIED WORKSPACE
            "$maindMod CTRL, 1, workspace, 1"
            "$maindMod CTRL, 2, workspace, 2"
            "$maindMod CTRL, 3, workspace, 3"
            "$maindMod CTRL, 4, workspace, 4"
            "$maindMod CTRL, 5, workspace, 5"
            "$maindMod CTRL, 6, workspace, 6"
            "$maindMod CTRL, 7, workspace, 7"
            "$maindMod CTRL, 8, workspace, 8"
            "$maindMod CTRL, 9, workspace, 9"
            "$maindMod CTRL, 0, workspace, 0"

            # MOVE WINDOW TO SPECIFIED WORKSPACE
            "$maindMod SHIFT CTRL, 1, movetoworkspace, 1"
            "$maindMod SHIFT CTRL, 2, movetoworkspace, 2"
            "$maindMod SHIFT CTRL, 3, movetoworkspace, 3"
            "$maindMod SHIFT CTRL, 4, movetoworkspace, 4"
            "$maindMod SHIFT CTRL, 5, movetoworkspace, 5"
            "$maindMod SHIFT CTRL, 6, movetoworkspace, 6"
            "$maindMod SHIFT CTRL, 7, movetoworkspace, 7"
            "$maindMod SHIFT CTRL, 8, movetoworkspace, 8"
            "$maindMod SHIFT CTRL, 9, movetoworkspace, 9"
            "$maindMod SHIFT CTRL, 0, movetoworkspace, 0"
        ];
        # MOUSE BINDS
        bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
        ];
        bindel = [
            # AUDIO AND BRIGHTNESS CONTROL KEYS
            ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
            ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
            ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
            ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
            ",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
            ",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
        ];
    };
}

