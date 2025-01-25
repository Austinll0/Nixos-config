{pkgs,...}:
{
programs.hyprland.enable = true;
programs.hyprpaper.enable = true;
environment.systemPackages = [pkgs.hyprpaper];


}
