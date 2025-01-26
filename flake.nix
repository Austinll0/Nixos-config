{
    description = "A simple NixOS flake";

    inputs = {
        # NixOS official package source, using the nixos-24.11 branch here
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
        
        #hyprland setup
        hyprland.url = "github:hyprwm/Hyprland";
        hyprland-plugins = {
                url = "github:hyprwm/hyprland-plugins";
                inputs.hyprland.follows = "hyprland";
        };
        # home manager setup 
        home-manager = {
                url = "github:nix-community/home-manager/release-24.11";
                inputs.nixpkgs.follows = "nixpkgs";
        };
        
    };

    outputs = {nixpkgs,home-manager,...}@inputs: {
        nixosConfigurations = {
            laptop = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                modules = [
                        # Import the previous configuration.nix we used,
                        # so the old configuration file still takes effect
                        ./hosts/laptop
                        
                        # enable home-manager module
                        home-manager.nixosModules.home-manager
                        {
                                home-manager.useGlobalPkgs = true;
                                home-manager.useUserPackages = true;
                                home-manager.users.austinl = import ./home;
                                home-manager.backupFileExtension = "hm-backup"; #allow home-manager to override files and back them up
                        }
                ];
            };
        };
    };
}
