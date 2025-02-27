{lib, onfig,...}:
{
options = {
    steamModule.enable = lib.mkEnableOption "enables steam module";
    theme = mkOption{
        type = types.str;
        default = "observer";
        example = "theme name";
        description = "name of theme, placed into file paths as home/themes/{theme}/etc..";
    };
};
}
