{pkgs,inputs, ...}:
{
    imports = [
    ./config/binds.nix
    ./config/rules.nix
    ./config/autostart.nix 
    ./config/options.nix
    ./config/workspaces.nix
    ../themes/observer/hyprland.nix
    ];
    wayland.windowManager.hyprland = {
        enable = true;
        plugins = [
            inputs.hyprland-plugins.packages."${pkgs.system}".borders-plus-plus
        ];
        settings = {
         source = "./pimp.conf";
        };
    };

    home.file."config/hypr/pimp.conf".source = ../themes/observer/hypr/pimp.conf;
}

