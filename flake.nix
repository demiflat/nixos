{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    #nixos-unstable-small.url = "github:NixOS/nixpkgs/nixos-unstable-small";
    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
    #jeezyvim.url = "github:LGUG2Z/JeezyVim";
    #home-manager.url = "github:nix-community/home-manager";
    #home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = inputs: let
    system = "x86_64-linux";
    #unstable-small-pkgs = import inputs.nixos-unstable-small {inherit system;};
    #xdphOverlay = final: prev: {
    #  inherit (unstable-small-pkgs) xdg-desktop-portal-hyprland;
    #};
    pkgs = import inputs.nixpkgs {
      inherit system;
      overlays = [
        #        xdphOverlay
        inputs.jeezyvim.overlays.default
      ];
      config = {
        permittedInsecurePackages = [];
        allowUnfree = true;
      };
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
  };
}
