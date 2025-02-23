{inputs, config, pkgs, ...}:

{ 
    home.username = "austinl";
    home.homeDirectory = "/home/austinl";
    nixpkgs.config.allowUnfreePredicate = (pkg: true);
    imports = [
        ./vim/default.nix
        ./git.nix
        ./hyprland/default.nix
        ./waybar/default.nix
        ./rofi/default.nix
        ./kitty/default.nix
        ./mako/default.nix
    ];
    home.packages = with pkgs; [ 
            # hyprland stuff
            grim
            slurp
            spotify		
            discord
            dolphin
    ];
    home.file.".config/wallpaper.png".source = themes/observer/wallpaper.png;
    home.stateVersion = "24.11";
    
    programs.home-manager.enable = true;
}
