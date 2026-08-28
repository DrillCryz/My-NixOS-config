{ pkgs, ... }:

{
  #==========#
  #= Brillo =#
  #==========#

  environment.systemPackages = with pkgs; [
    brightnessctl
  ];
}
