{pkgs, ...}: 
let sddm-astronaut = pkgs.sddm-astronaut.override{
	themeConfig = {
		FormPosition = "left";
	};
};
in {
  services.xserver.enable = true;
  services.displayManager.sddm = {
	  enable = true;
	  package = pkgs.kdePackages.sddm;
	  
	  theme = "sddm-astronaut-theme";
	  extraPackages = [sddm-astronaut];
  };
  environment.systemPackages = [sddm-astronaut];
}
