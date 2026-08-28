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

  #===========#
  #= Flatpak =#
  #===========#

  services.flatpak.enable = true;

}
