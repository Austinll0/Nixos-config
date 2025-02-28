{config, pkgs, inputs, ...}:
let 
    ffpackages = inputs.firefox-addons.packages."x86_64-linux";
in
{
    programs.firefox = {
        enable = true;

        bookmarks = [
            {
                name = "myNixOs";
                tags = ["Nix"];
                keyword = "myNix";
                url = "https://mynixos.com/";
            }
            {
                name = "Nix Packages";
                tags = ["Nix"];
                keyword = "pkgs";
                url = "https://search.nixos.org/packages";
            }
            {
                name = "Intro to Nix";
                tags = ["Nix"];
                keyword = "NixIntro";
                url = "https://nixos-and-flakes.thiscute.world/introduction/";
            }
            {
                name = "Nix example config";
                tags = ["Nix"];
                keyword = "NixEx";
                url = "https://github.com/luravoid/nixos-config/tree/main";
            }
        ];
       
        extensions = with ffpackages; [
            mtab
            reddit-enhancement-suite
            lastpass-password-manager
            ublock-origin
        ];
    };
};
