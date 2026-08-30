{ config, pkgs, ... }:

{
  home.username = "hax";
  home.homeDirectory = "/home/hax";

  programs.home-manager.enable = true;

  imports = [
    ./modules/niri.nix
    ./modules/noctalia.nix
    ./modules/terminal.nix
    ./modules/fish.nix
    ./modules/fastfetch.nix
    ./modules/ghostty.nix

 ];

  #================#
  #= Sistema-Home =#
  #================#

  home.stateVersion = "26.05";

}
