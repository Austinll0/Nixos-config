{
    services.hypridle = {
        enable = true;
        settings = {
            general = {
                lock_cmd = "hyprlock";
            };
            listener = [ 
                {
                    timeout = 30;
                    on-timeout = "hyprlock";
                };
                {
                    timeout = 15;
                    on-timeout = "test=$(brightnessctl get); brightnessctl set 0";
                    on-resume = "brightnessctl set $test";
                };
            ];
        };

    };
}
