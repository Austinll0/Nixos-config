{lib,config,...}:
{
    services.hypridle = lib.mkIf (config.hyprlandConf.idle.enable) {
        enable = true;
        settings = {
            general = {
                lock_cmd = "hyprlock";
            };
            listener = [ 
                {
                    timeout = 30;
                    on-timeout = "hyprlock";
                }
            ];
        };

    };
}
