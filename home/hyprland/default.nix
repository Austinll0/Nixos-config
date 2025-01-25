{pkgs,...}:
{
    imports = [
    ./config/binds.nix
    ./config/rules.nix
    ./config/autostart.nix 
    ./config/options.nix
    ./themes/observer/observer.nix
    ];
    wayland.windowManager.hyprland = {
        enable = true;
    };
}

