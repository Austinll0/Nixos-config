{lib,pkgs,config,...}:

{
    config = lib.mkIf config.steamModule.enable {
        programs.steam = {
            enable = true;
            gamescopeSession.enable = false; #keep Hyprland as compositor
            remotePlay.openFirewall = true;
            dedicatedServer.openFirewall = true;
            localNetworkGameTransfers.openFirewall = true;
        };

        environment.systemPackages = with pkgs; [
        protonup-qt
        gamescope
        ];

        programs.gamemode.enable = true;
    };

}
