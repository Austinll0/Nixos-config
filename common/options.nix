{config,...}:
{
options = {
    steamModule.enable = mkEnableOption "enables steam module";

};
config = {
    steamModule.enable = mkDefault true;
};
}
