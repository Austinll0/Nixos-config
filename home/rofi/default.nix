{pkgs,...}:
{
home.packages = [pkgs.rofi];

home.file.".config/rofi/config.rasi".source = ../themes/observer/rofi/config.rasi;

}
