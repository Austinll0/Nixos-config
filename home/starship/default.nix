{...}:

{
    programs.starship = {
        enable = true;
        enableBashIntegration = true;
    };
    programs.bash.enable = true;
    home.file.".config/starship.toml".source = ./starship.toml;
}
