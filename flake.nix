{
    description = "A simple NixOS flake";

    inputs = {
        # NixOS official package source, using the nixos-24.11 branch here
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
        
        #hyprland setup
        hyprland.url = "github:hyprwm/Hyprland";
        hyprland-plugins = {
                url = "github:hyprwm/hyprland-plugins";
                inputs.hyprland.follows = "hyprland";
        };
        # home manager setup 
        home-manager = {
                url = "github:nix-community/home-manager/release-25.05";
                inputs.nixpkgs.follows = "nixpkgs";
        };
        firefox-addons = {
            url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = {nixpkgs,home-manager,...}@inputs: 
        # Home configurations
        let 
            system = "x86_64-linux";
            pkgs = nixpkgs.legacyPackages.${system};
        in{
            # System configurations
            nixosConfigurations = {
                # Laptop config
                laptop = nixpkgs.lib.nixosSystem {
                    inherit system;
                    modules = [
                            # Import the previous configuration.nix we used,
                            # so the old configuration file still takes effect
                            ./hosts/laptop
			    ./common
                    ];
                    specialArgs = {inherit inputs;};
                };
		virtual = nixpkgs.lib.nixosSystem {
                    inherit system;
                    modules = [
                            ./hosts/virtual
			    ./common
                    ];
                    specialArgs = {inherit inputs;};
            	};
                desktop = nixpkgs.lib.nixosSystem {
                    inherit system;
                    modules = [
                            ./hosts/desktop
                            ./common
                    ];
                    specialArgs = {inherit inputs;};
            	};
	    };
            homeConfigurations = {
                #default
                austinl = home-manager.lib.homeManagerConfiguration {
                    inherit pkgs;
                    modules = [./home  ];
                    extraSpecialArgs = {inherit inputs nixpkgs;};
                };
                #dedicated configs per host
                "austinl@laptop" = home-manager.lib.homeManagerConfiguration {
                    inherit pkgs;
                    modules = [
                    ./home
                    ./users/austinl/laptop.nix
                    ];
                    extraSpecialArgs = {inherit inputs nixpkgs;};
                };
                "austinl@desktop" = home-manager.lib.homeManagerConfiguration {
                    inherit pkgs;
                    modules = [
                    ./home
                    ./users/austinl/desktop.nix
                    ];
                    extraSpecialArgs = {inherit inputs nixpkgs;};
                };
                "austinl@virtual" = home-manager.lib.homeManagerConfiguration {
                    inherit pkgs;
                    modules = [
                        ./home
                        ./users/austinl/virtual.nix
                    ];
                    extraSpecialArgs = {inherit inputs nixpkgs;};
                };

            };
        };
}
