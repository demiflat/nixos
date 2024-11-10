{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    #nixos-unstable-small.url = "github:NixOS/nixpkgs/nixos-unstable-small";
    #nixvim.url = "github:nix-community/nixvim";
    #nixvim.inputs.nixpkgs.follows = "nixpkgs";
    #nixvim.url = "github:mikaelfangel/nixvim-config";
    #nixvim.url = "github:elythh/nixvim";
    nixvim.url = "github:dc-tec/nixvim";
    # nixvim.url = "/development/os/vi/dakvim";
    # jeezyvim.url = "github:LGUG2Z/JeezyVim";
    #home-manager.url = "github:nix-community/home-manager";
    #home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs =
    inputs:
    let
      system = "x86_64-linux";
      pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [
          (final: prev: {
            neovim = inputs.nixvim.packages.${pkgs.system}.default;
          })
        ];
        config = {
          permittedInsecurePackages = [ ];
          allowUnfree = true;
        };
      };
    in
    {
      # your configuration
      nixosConfigurations = {
        yoshi = inputs.nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs pkgs;
          };
          modules = [
            ./configuration.nix
            #inputs.nixvim.nixosModules.nixvim
          ];
        };
      };
    };
}
