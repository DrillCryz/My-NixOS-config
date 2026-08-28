{ pkgs, ... }:

{

  #=========#
  #= Audio =#
  #=========#

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
};

  #=============#
  #= Bluetooth =#
  #=============#

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
};

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
