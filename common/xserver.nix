{config, pkgs, ...}:
{
    # Configure keymap in X11
    services.xserver = {
        enable = true;
        xkb = {
            layout = "us";
            variant = "";
        };
        # Enable touchpad support ( default in most desktopManagers )
        # libinput.enable = true;
    };


    # Enable touchpad support (default in most desktopManagers)
    # services



}
