{lib,pkgs,...}:
{
    home.file.".config/wallpaper.png".source = ./wallpaper.png;
    home.file.".config/waybar/config.jsonc".source = ./waybar/config.jsonc;
    home.file.".config/waybar/style.css".source = ./waybar/style.css;
    home.file.".config/kitty/kitty.conf".source = ./kitty/kitty.conf;
    home.file.".config/mako/config".source = ./mako/config;
    home.file.".config/hypr/pimp.conf".source = ./hypr/pimp.conf;
    home.file.".config/hypr/hyprlock.conf".source = ./hypr/hyprlock.conf;
    home.file.".config/rofi/config.rasi".source = ./rofi/config.rasi;

}
