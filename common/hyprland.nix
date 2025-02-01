{pkgs,...}:
{
    programs.hyprland.enable = true;
    programs.hyprpaper.enable = true;
    environment.systemPackages = [pkgs.hyprpaper];

    xdg.portal = {
        enable = true;
        extraPortals = [pkgs.xdg-desktop-portal-gtk];
    };

}
