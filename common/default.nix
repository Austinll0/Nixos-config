{pkgs,...}:
{   
    imports = [
        ./steam.nix
        ./sddm.nix
        ./plymouth.nix
        ./gnome.nix
        ./home-manager.nix
    ];
}
