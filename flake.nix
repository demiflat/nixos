{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    #zen-browser.url = "github:MarceColl/zen-browser-flake";
    #isd.url = "https://github.com/isd-project/isd";
    #nixos-unstable-small.url = "github:NixOS/nixpkgs/nixos-unstable-small";
    #nixvim.url = "github:nix-community/nixvim";
    #nixvim.inputs.nixpkgs.follows = "nixpkgs";
    #nixvim.url = "github:mikaelfangel/nixvim-config";
    #nixvim.url = "github:elythh/nixvim";
    #nixvim.url = "github:dc-tec/nixvim";
    # nixvim.url = "/development/os/vi/dakvim";
    # jeezyvim.url = "github:LGUG2Z/JeezyVim";
    #home-manager.url = "github:nix-community/home-manager";
    #home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs =
    { self, nixpkgs, ... }@inputs:
    {
      nixosConfigurations = {
        yoshi = nixpkgs.lib.nixosSystem {
#          system = "x86_64-linux";
          specialArgs = { inherit inputs; system = "x86_64-linux"; };
          modules = [
            #inputs.isd.default
            ./configuration.nix
          ];
        };
      };
    };
}
