{ config, pkgs, ... }:

{
  home.username = "hax";
  home.homeDirectory = "/home/hax";

  programs.home-manager.enable = true;

  imports = [
    ./terminal.nix
    ./modules/niri.nix
    ./modules/noctalia.nix
 ];

  programs.fish.enable = true;

  #================#
  #= Sistema-Home =#
  #================#

  home.stateVersion = "26.05";

}
