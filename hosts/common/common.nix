# Random common things across builds that I don't fully understand
{inputs, config, pkgs, ...}:
let 
localeSetting = "en_US.UTF-8";
in
{
    # Bootloader
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    # Enable flakes and the new CLI tool
    nix.settings.experimental-features = ["nix-command" "flakes"];

    # Enable Networking
    networking.networkmanager.enable = true;
    # Home-manager
    inputs.home-manager.backupFileExtension = "hmbackup";

    # Set time zone
    time.timeZone = "America/New_York";

    # Internationalisation properties
    i18n.defaultLocale = localeSetting;

    i18n.extraLocaleSettings = {
        LC_ADDRESS = localeSetting; 
        LC_IDENTIFICATION = localeSetting;
        LC_MEASUREMENT = localeSetting;
        LC_MONETARY = localeSetting;
        LC_NAME = localeSetting;
        LC_NUMERIC = localeSetting;
        LC_PAPER = localeSetting;
        LC_TELEPHONE = localeSetting;
        LC_TIME = localeSetting;
    };

    # Enable CUPS to print documents
    services.printing.enable = true;

    # Enable sound with pipewire
    hardware.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        # jack.enable = true; #enable if you want to use JACK applications
        # media-session.enable = true; # currently enabled by default
    };
}
