{config,lib,...}:
let 
    enabled = config.theme == "zen"
in
{
    config = lib.mkIf enabled {
        home.file.".config/wallpaper.png".source = ./wallpaper.png;
        #home.file.".config/mako/config".source = ./mako/config;

        home.file.".config/hypr/pimp.conf".source = ./hypr/pimp.conf;
        home.file.".config/hypr/hyprlock.conf".source = ./hypr/hyprlock.conf;
        home.file.".config/hypr/deco".source = {
            source = ./hypr/deco
            recursive = true;
        }
        home.file.".config/hypr/scripts".source = {
            source = ./hypr/scripts
            recursive = true;
        }
        home.file.".config/rofi" = {
            source = ./rofi
            recursive = true;
        }

        home.file.".config/waybar" = {
            source = ./waybar
            recursive = true;
        }

        home.file.".config/kitty" = {
            source = ./kitty
            recursive = true;
        }
    };
}
