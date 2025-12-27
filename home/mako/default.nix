{pkgs,config, ...}:

{ 
    home.packages = with pkgs; [ 
            mako
    ];
}
