{
  description = "DrillNixOs Configuration";

  #==========#
  #= Inputs =#
  #==========#

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  #-#================#
  #-#= Home Manager =#
  #-#================#

  home-manager = {
    url = "github:nix-community/home-manager/release-26.05";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  #-#============#
  #-#= Noctalia =#
  #-#============# 

  noctalia = {
    url = "github:noctalia-dev/noctalia";
    inputs.nixpkgs.follows = "nixpkgs";
  };
};

  #===========#
  #= Outputs =#
  #===========#

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.hax =
  nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";

    modules = [
      ./configuration.nix

      home-manager.nixosModules.home-manager

      {
        home-manager.extraSpecialArgs = { inherit inputs; };

        home-manager.users.hax = import ./home/home.nix;
       }
      ];
    };
  };
}
