# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ inputs, config, pkgs, ... }:

{
  networking.hostName = "desktop"; # Define your hostname.
  # modules to include
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../common/common.nix
    ];
  # Enable the hyprland Desktop Environment
  programs.hyprland = {
      enable = true;
      # set the flake package
      package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
      portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };

  # Boot steps
  services.xserver.videoDrivers = ["amdgpu"];
  boot.initrd.kernelModules = ["amdgpu"]; 
  hardware.opengl = {
    enable = true;
    driSupport32Bit = true;
  };

  # Define Drives
  fileSystems."/Tiny" = 
    { device = "/dev/disk/by-label/Tiny";
      fsType = "ext4";
    };
  fileSystems."/Hard" = 
    { device = "/dev/disk/by-label/Hard";
      fsType = "ext4";
    };

  #other things?
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-gtk];
  
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.austinl = {
    isNormalUser = true;
    description = "Austin LaFever";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

  # Enable automatic login for the user.
  services.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "austinl";

  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  #systemd.services."getty@tty1".enable = false;
  #systemd.services."autovt@tty1".enable = false;

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
        # system monitor
        monitor
        # netowrk manager application
        networkmanagerapplet
        # bluetooth manager application
        blueman
        # brightness manager application
        brightnessctl
      ];
  fonts.packages = with pkgs; [
    font-awesome
  ];
  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

}
