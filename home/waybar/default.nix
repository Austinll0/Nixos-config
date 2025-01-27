{pkgs,...}:
{
home.packages = [pkgs.waybar];

programs.waybar.enable = true;
home.file.".config/waybar/config.jsonc".source = ../themes/observer/waybar/config.jsonc;
home.file.".config/waybar/style.css".source = ../themes/observer/waybar/style.css;

}
