{ pkgs, ... }:

{
  programs.niri.enable = true;

  environment.systemPackages = [
    (pkgs.xwayland-satellite.overrideAttrs (old: {
      version = "0.8.1";

      src = pkgs.fetchFromGitHub {
        owner = "Supreeeme";
        repo = "xwayland-satellite";
        rev = "v0.8.1";
        hash = "sha256-BUE41HjLIGPjq3U8VXPjf8asH8GaMI7FYdgrIHKFMXA=";
      };

      cargoDeps = pkgs.rustPlatform.fetchCargoVendor {
        pname = old.pname;
        version = "0.8.1";
        src = pkgs.fetchFromGitHub {
          owner = "Supreeeme";
          repo = "xwayland-satellite";
          rev = "v0.8.1";
          hash = "sha256-BUE41HjLIGPjq3U8VXPjf8asH8GaMI7FYdgrIHKFMXA=";
        };
        hash = "sha256-16L6gsvze+m7XCJlOA1lsPNELE3D364ef2FTdkh0rVY=";
      };
    }))
  ];
}
