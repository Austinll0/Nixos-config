{pkgs, ...}: 
let sddm-astronaut = pkgs.sddm-astronaut.override{
	themeConfig = {
		FormPosition = "left";
	};
};
in {
  imports = [
    ./xserver.nix
  ];
  services.displayManager.sddm = {
	  enable = true;
	  package = pkgs.kdePackages.sddm;
	  
	  theme = "sddm-astronaut-theme";
	  extraPackages = [sddm-astronaut];
  };
  environment.systemPackages = [sddm-astronaut];
}
