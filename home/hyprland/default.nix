{pkgs,...}:
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
    };
}

