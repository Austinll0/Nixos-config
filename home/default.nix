{inputs, config, pkgs, ...}:

{ 
	home.username = "austinl";
	home.homeDirectory = "/home/austinl";
        imports = [
            ./shell/default.nix
            ./git.nix
            ./hyprland/default.nix
        ];
	home.packages = with pkgs; [ 
		# hyprland stuff
		grim
		slurp
		rofi
		mako
		waybar
		swww
		spotify		
		discord
                protonup-qt
                dolphin
	];

	home.stateVersion = "24.11";
	
	programs.home-manager.enable = true;
}
