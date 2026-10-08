{ pkgs, ... }:

{

  #==============#
  #=  Bluetooth =#
  #==============#

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  ## Extra: blueman ##

  services.blueman.enable = true;

}
