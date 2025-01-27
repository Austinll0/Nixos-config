{inputs, config, pkgs, ...}:

{ 
    home.username = "austinl";
    home.homeDirectory = "/home/austinl";
    nixpkgs.config.allowUnfreePredicate = (pkg: true);
    imports = [
        ./shell/default.nix
        ./git.nix
        ./hyprland/default.nix
        ./wayland/default.nix
    ];
    home.packages = with pkgs; [ 
            # hyprland stuff
            grim
            slurp
            rofi
            mako
            swww
            spotify		
            discord
            protonup-qt
            dolphin
    ];

    home.stateVersion = "24.11";
    
    programs.home-manager.enable = true;
}
