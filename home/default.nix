{lib, inputs, config, pkgs, ...}:

{ 
    home.username = "austinl";
    home.homeDirectory = "/home/austinl";
    nixpkgs.config.allowUnfreePredicate = (pkg: true);
    imports = [
        ./lf
        ./vim/default.nix
        ./git.nix
        ./rofi/default.nix
        ./kitty/default.nix
        ./firefox
        ./homeOptions.nix
    ];
    home.packages = with pkgs; [ 
            spotify		
            discord
            pinta
            qalculate-qt
    ];
    theme = "zen";
    home.stateVersion = "24.11";
    
    programs.home-manager.enable = true;
}
