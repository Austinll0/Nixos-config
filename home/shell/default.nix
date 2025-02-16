{pkgs,...}:
let
    myAliases = {
        hmupdate = "home-manager switch --flake ~/.dotfiles/Nixos-config";
    };
in
{
    programs.bash = {
        enable = true;
        enableCompletion = true;
        shellAliases = myAliases;
}
