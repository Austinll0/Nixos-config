{lib, onfig,...}:
{
options = {
    steamModule.enable = lib.mkEnableOption "enables steam module";

};
config = {
    steamModule.enable = lib.mkDefault true;
};
}
