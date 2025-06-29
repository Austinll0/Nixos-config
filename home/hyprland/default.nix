{lib,inputs,pkgs,config,...}:
{
    imports = [
    ./config/binds.nix
    ./config/rules.nix
    ./config/autostart.nix 
    ./config/options.nix
    ./config/workspaces.nix
    ./hyprpaper.nix
    ./hyprlock.nix
    ./hypridle.nix
    ];
    wayland.windowManager.hyprland = {
        enable = true;
        package = inputs.hyprland.packages.${pkgs.system}.hyprland;
        plugins = [
            inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.borders-plus-plus
            #inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.hyprexpo
        ];
        settings = {
            debug = {
                enable_stdout_logs = true;
                disable_logs = false;
            };
            source = "pimp.conf";
        };
    };
    home.file.".config/hypr/pimp.conf".source = ../themes/${config.theme}/hypr/pimp.conf;
}

