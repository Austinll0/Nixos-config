{pkgs, ...}:

{ 
    home.packages = with pkgs; [ 
            mako
    ];
    home.file.".config/mako/config".source = ../themes/observer/mako/config;
}
