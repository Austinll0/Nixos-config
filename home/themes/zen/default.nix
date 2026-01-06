{config,lib,pkgs,...}:
let 
    enabled = config.theme == "zen";
in
{
    config = lib.mkIf enabled {
        home.packages = with pkgs; [ starship ];
        home.file.".config/wallpaper.png".source = ./wallpaper.png;
        #home.file.".config/mako/config".source = ./mako/config;

        home.file.".config/hypr/pimp.conf".source = ./hypr/pimp.conf;
        home.file.".config/hypr/hyprlock.conf".source = ./hypr/hyprlock.conf;
        home.file.".config/hypr/deco" = {
            source = ./hypr/deco;
            recursive = true;
        };
        home.file.".config/hypr/scripts" = {
            source = ./hypr/scripts;
            recursive = true;
        };
        home.file.".config/rofi" = {
            source = ./rofi;
            recursive = true;
        };

        home.file.".config/waybar" = {
            source = ./waybar;
            recursive = true;
        };

        home.file.".config/kitty" = {
            source = ./kitty;
            recursive = true;
        };
        home.file.".config/starship.toml".source = ./starship.toml;
    };
}
