{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./extra-configs/extra-config.nix
      ./extra-configs/niri.nix
      ./extra-configs/brightness.nix
      ./extra-configs/power.nix
      ./extra-configs/storage.nix
    ];

  #==============#
  #= BootLoader =#
  #==============#

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  #==============#
  #= Networking =#
  #==============#

  networking.hostName = "hax";
  
  networking.networkmanager.enable = true;

  #================#
  #= Localization =#
  #=    Time      =#
  #================#

  time.timeZone = "America/Santiago";

  i18n.defaultLocale = "es_CL.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "es_CL.UTF-8";
    LC_IDENTIFICATION = "es_CL.UTF-8";
    LC_MEASUREMENT = "es_CL.UTF-8";
    LC_MONETARY = "es_CL.UTF-8";
    LC_NAME = "es_CL.UTF-8";
    LC_NUMERIC = "es_CL.UTF-8";
    LC_PAPER = "es_CL.UTF-8";
    LC_TELEPHONE = "es_CL.UTF-8";
    LC_TIME = "es_CL.UTF-8";
  };

  #=============#
  #= Servicios =#
  #=============#

  services.xserver.enable = true;

  services.xserver.displayManager.lightdm.enable = true;

  services.xserver.xkb = {
    layout = "latam";
    variant = "";
  };

  #================#
  #= NixOS Portal =#
  #================#

  xdg.portal = {
    enable = true;

  extraPortals = [
    pkgs.xdg-desktop-portal-gtk
    ];
  };

  #============#
  #= Keyboard =#
  #= Consola  =#
  #============#

  console.keyMap = "la-latin1";

  services.printing.enable = true;

  #===========#
  #= Nixpkgs =#
  #=  Flake  =#
  #===========#

  nix.settings.experimental-features =
    [ "nix-command" "flakes" ];

  #===========#
  #= Usuario =#
  #===========#

  users.users."hax" = {
    isNormalUser = true;
    description = "DrillCryz";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [
    ];
  };

  nixpkgs.config.allowUnfree = true;

  #=============#
  #= Programas =#
  #=============#

  environment.systemPackages = with pkgs; [
    nautilus
    libreoffice
];

  programs.firefox.enable = true;
  programs.fish.enable = true;

  #===========#
  #= Sistema =#
  #===========#

  system.stateVersion = "26.05"; 

}
