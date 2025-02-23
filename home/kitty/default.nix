{pkgs,...}:
{
home.packages = [pkgs.kitty];

home.file."~/.config/kitty/kitty.conf".source = ../themes/observer/kitty/kitty.conf;

}
