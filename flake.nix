{
  inputs = {
    #nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    #nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    #nixos-unstable-small.url = "github:NixOS/nixpkgs/nixos-unstable-small";
    #flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixos-unstable-small.url = "github:NixOS/nixpkgs/nixos-unstable-small";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
    #home-manager.url = "github:nix-community/home-manager";
    #home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {...} @ inputs:
    inputs.flake-utils.lib.eachDefaultSystem (
      system: let
        unstable-small-pkgs = import inputs.nixos-unstable-small {inherit system;};
        pkgs = import inputs.nixpkgs {
          inherit system;
          overlays = [
            (final: prev: {
              inherit (unstable-small-pkgs) xdg-desktop-portal-hyprland;
            })
          ];
        };
      in {
        # your configuration
        nixosConfigurations = {
          yoshi = inputs.nixpkgs.lib.nixosSystem {
            inherit system;
            specialArgs = {inherit inputs pkgs;};
            modules = [
              ./configuration.nix
              inputs.nixvim.nixosModules.nixvim
            ];
          };
        };
      }
    );
  #  outputs = {
  #    self,
  #    nixpkgs,
  #  } @ inputs: {
  #    nixosConfigurations.yoshi = nixpkgs.lib.nixosSystem {
  #      system = "x86_64-linux";
  #      modules = [
  #        ./configuration.nix
  #      ];
  #      specialArgs = {inherit inputs;};
  #    };
  #  };
}
