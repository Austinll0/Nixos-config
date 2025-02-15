{pkgs,inputs,...}:
{
    programs.hyprland.enable = true;
    programs.hyprland.package = inputs.hyprland.packages."${pkgs.system}".hyprland;
    programs.hyprpaper.enable = true;
    environment.systemPackages = [pkgs.hyprpaper];

    xdg.portal = {
        enable = true;
        extraPortals = [pkgs.xdg-desktop-portal-gtk];
    };

}
