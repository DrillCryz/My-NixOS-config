{ pkgs, ... }:

{
  #=========#
  #= Steam =#
  #=========#

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    prismlauncher
    modrinth-app
  ];
}
