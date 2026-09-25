{ config, pkgs, ... }:

{
  home.username = "hax";
  home.homeDirectory = "/home/hax";

  programs.home-manager.enable = true;

  imports = [
    ./modules/arte.nix
    ./modules/fastfetch.nix
    ./modules/fish.nix
    ./modules/ghostty.nix
    ./modules/niri.nix
    ./modules/noctalia.nix
    ./modules/ofimatica.nix
    ./modules/terminal.nix
    ./modules/video.nix

 ];

  #================#
  #= Sistema-Home =#
  #================#

  home.stateVersion = "26.05";

}
