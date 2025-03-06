{
    services.hypridle = {
        enable = true;
        settings = {
            general = {
                lock_cmd = "hyprlock";
            };
            listener = [ 
                {
                    timeout = 60;
                    on-timeout = "hyprlock";
                }
            ];
        };

    };
}
