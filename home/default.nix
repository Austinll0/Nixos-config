{lib, inputs, config, pkgs, ...}:

{ 
    home.username = "austinl";
    home.homeDirectory = "/home/austinl";
    nixpkgs.config.allowUnfreePredicate = (pkg: true);
    imports = [
        ./lf
        ./vim/default.nix
        ./git.nix
        ./hyprland/default.nix
        ./waybar/default.nix
        ./rofi/default.nix
        ./kitty/default.nix
        ./mako/default.nix
        ./wlogout/default.nix
        ./firefox
        ./homeOptions.nix

        ./themes/${config.theme}/default.nix
    ];
    home.packages = with pkgs; [ 
            # hyprland stuff
            zoom-us
            grim
            slurp
            spotify		
            discord
    ];
    theme = "observer";
    home.stateVersion = "24.11";
    
    programs.home-manager.enable = true;
}
