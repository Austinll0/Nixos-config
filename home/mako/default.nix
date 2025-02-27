{pkgs,config, ...}:

{ 
    home.packages = with pkgs; [ 
            mako
    ];
    home.file.".config/mako/config".source = ../themes/${config.theme}/mako/config;
}
