{inputs,pkgs,...}:
{
    programs.hyprlock = {
        enable = true;
    };
    home.file.".config/hypr/hyprlock.conf".source= ../themes/observer/hypr/hyprland.conf
}

