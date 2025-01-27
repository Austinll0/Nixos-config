{pkgs,...}:
{
environment.systemPackages = [pkgs.waybar];

waybar.enable = true;
home.file.".config/waybar/config.jsonc" = "../themes/observer/config.jsonc"
home.file.".config/waybar/style.css" = "../themes/observer/style.css"

}
