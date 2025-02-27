{pkgs,config,...}:
{
home.packages = [pkgs.rofi];

home.file.".config/rofi/config.rasi".source = ../themes/${config.theme}/rofi/config.rasi;

}
