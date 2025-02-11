{lib,pkgs,config,...}:

{
    config = lib.mkIf config.steamModule.enable {
        programs.steam = {
            enable = true;
            remotePlay.openFirewall = true;
            dedicatedServer.openFirewall = true;
            localNetworkGameTransfers.openFirewall = true;
        };
        environment.systemPackages = with pkgs; [protonup-qt];
    };

}
