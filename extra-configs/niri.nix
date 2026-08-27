{ pkgs, ... }:

  #========#
  #= Niri =#
  #========#

{
  programs.niri.enable = true;

  environment.systemPackages = [
    pkgs.xwayland-satellite
  ];

}
