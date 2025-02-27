{pkgs,config,...}:
{
home.packages = [pkgs.kitty];

home.file.".config/kitty/kitty.conf".source = ../themes/${config.theme}/kitty/kitty.conf;

}
