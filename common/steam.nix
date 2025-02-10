{pkgs,...}:

{
    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true;
        dedicatedServer.openFirewall = true;
        localNetworkGameTransfers.openFirewall = true;
    };
    environment.systemPackage = with pkgs; [protonup-qt];


}
