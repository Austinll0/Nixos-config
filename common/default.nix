{pkgs,...}:
{   
    imports = [
        ./options.nix
        ./steam.nix
        ./sddm.nix
        ./plymouth.nix
        ./gnome.nix
        ./home-manager.nix
    ];
}
