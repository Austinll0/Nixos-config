{inputs,pkgs,config,...}:
{
    programs.hyprlock = {
        enable = true;
    };
    home.file.".config/hypr/hyprlock.conf".source= ../themes/${config.theme}/hypr/hyprlock.conf;
}

