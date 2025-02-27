{pkgs,config,...}:
{
home.packages = [pkgs.waybar];

programs.waybar.enable = true;
home.file.".config/waybar/config.jsonc".source = ../themes/${config.theme}/waybar/config.jsonc;
home.file.".config/waybar/style.css".source = ../themes/${config.theme}/waybar/style.css;

}
