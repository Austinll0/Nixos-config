{
    wayland.windowManager.hyprland.settings = {
        "$terminal" = "foot";
        "$fileManager" = "dolphin";
        "$menu" = "rofi -show drun --show-images";
        "$mainMod" = "SUPER";
        # KEYBOARD BINDS
        bind = [
            # BASIC COMMMANDS
            "$mainMod, Q, exec, $terminal"        
            "$mainMod, C, killactive," 
            "$mainMod, M, exit,"
            "$mainMod, E, exec, $fileManager"
            "$mainMod, V, togglefloating"
            "$mainMod, P, pseudo" #dwindle
            "$mainMod, J, togglesplit" #dwindle"
            "$mainMod, L, exec, hyprlock"
            "$mainMod, super_l, exec, $menu"

            # SPECIAL WORKSPACE
            "$mainMod, S, togglespecialworkspace, steam"
            "$mainMod SHIFT, S, movetoworkspace, special:steam"
            "$mainMod, D, togglespecialworkspace, discord"
            "$mainMod SHIFT, D, movetoworkspace, special:discord"

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
            "$mainMod CTRL, left, workspace, r-1"
            "$mainMod CTRL, right, workspace, r+1"

            # MOVE WINDOW OVER 1 WORKSPACE
            "$mainMod SHIFT CTRL, left, movetoworkspace, r-1"
            "$mainMod SHIFT CTRL, right, movetoworkspace, r+1"
            
            # MOVE TO SPECIFIED WORKSPACE
            "$mainMod, 1, workspace, 1"
            "$mainMod, 2, workspace, 2"
            "$mainMod, 3, workspace, 3"
            "$mainMod, 4, workspace, 4"
            "$mainMod, 5, workspace, 5"
            "$mainMod, 6, workspace, 6"
            "$mainMod, 7, workspace, 7"
            "$mainMod, 8, workspace, 8"
            "$mainMod, 9, workspace, 9"
            "$mainMod, 0, workspace, 0"

            # MOVE WINDOW TO SPECIFIED WORKSPACE
            "$mainMod SHIFT, 1, movetoworkspace, 1"
            "$mainMod SHIFT, 2, movetoworkspace, 2"
            "$mainMod SHIFT, 3, movetoworkspace, 3"
            "$mainMod SHIFT, 4, movetoworkspace, 4"
            "$mainMod SHIFT, 5, movetoworkspace, 5"
            "$mainMod SHIFT, 6, movetoworkspace, 6"
            "$mainMod SHIFT, 7, movetoworkspace, 7"
            "$mainMod SHIFT, 8, movetoworkspace, 8"
            "$mainMod SHIFT, 9, movetoworkspace, 9"
            "$mainMod SHIFT, 0, movetoworkspace, 0"
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

