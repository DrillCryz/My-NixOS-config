{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    prismlauncher
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
