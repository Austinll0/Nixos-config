{inputs,pkgs,...}:
{
    imports = [
    ./config/binds.nix
    ./config/rules.nix
    ./config/autostart.nix 
    ./config/options.nix
    ./config/workspaces.nix
    ./hyprpaper.nix
    ];
    wayland.windowManager.hyprland = {
        enable = true;
        package = inputs.hyprland.packages.${pkgs.system}.hyprland;
        plugins = [
            inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.borders-plus-plus
        ];
        settings = {
            source = "pimp.conf";
        };
    };
    home.file.".config/hypr/pimp.conf".source = ../themes/observer/hypr/pimp.conf;
}

