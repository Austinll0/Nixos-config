{config,lib,...}:

let 
    themeModule = ./${config.theme}/default.nix
{
imports = [ themeModule ];
}
