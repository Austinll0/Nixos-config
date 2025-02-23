{inputs,pkgs,...}:
{
    services.hyprpaper = {
        enable = true;
        preload = ["~/.config/wallpaper.png"];
        wallpaper = [",~/.config/wallpaper.png"];
    };
}

