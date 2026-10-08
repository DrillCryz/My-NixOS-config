{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    prismlauncher
    modrinth-app
  ];

  #=========#
  #= Steam =#
  #=========#

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };
}
