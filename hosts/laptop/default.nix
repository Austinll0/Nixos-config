# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{inputs, config, pkgs, ... }:

{
  networking.hostName = "laptop"; # Define your hostname.
  # modules to include
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../common/common.nix
    ];
  # module options

  # Bootloader.
  boot.kernelParams = ["i915.force_probe=7d55"]; # necessary for intel arc GPU, meteor lake gen

  # Enable sound with pipewire.
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  # text editor
  vim

  # system monitor
  monitor

  # network manager application
  networkmanagerapplet

  # bluetooth manager application
  blueman

  # brighness manager application 
  brightnessctl

  ];

  virtualisation.virtualbox.host.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

}
