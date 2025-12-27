{pkgs,config,...}:
{
home.packages = [pkgs.waybar];

programs.waybar.enable = true;

}
