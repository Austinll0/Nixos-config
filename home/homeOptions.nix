{lib, config, ...}:
{
    options = {
        steamModule.enable = lib.mkEnableOption "enables steam module";

        theme = lib.mkOption{
            type = lib.types.str;
            default = "observer";
            example = "theme name";
            description = "name of theme, placed into file paths as home/themes/{theme}/etc..";
        };
        hyprlandConf = {
            term = lib.mkOption{
                type = lib.types.str;
                default = "kitty";
                example = "kitty";
                description = "terminal to use with super+q";
            };
        };
    };
}
