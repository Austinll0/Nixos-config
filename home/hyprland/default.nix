{pkgs,...}:
{
    imports = [
    ./config/binds.nix
    ./config/rules.nix
    ./config/autostart.nix 
    ./config/options.nix
    ./config/workspaces.nix
    ];
    wayland.windowManager.hyprland = {
        enable = true;
        plugins = [
            inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system}.borders-plus-plus
        ];
    };
    home.file.".config/hypr/pimp.conf".source = ../themes/observer/hypr/pimp.conf;
}

