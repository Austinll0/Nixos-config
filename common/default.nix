{pkgs,...}:
{   
    imports = [
        ./sddm.nix
        ./plymouth.nix
        ./gnome.nix
        ./home-manager.nix
    ];
}
