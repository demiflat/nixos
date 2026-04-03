{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.11";
    nvf.url = "github:notashelf/nvf";
    #opencode.url = "github:anomalyco/opencode";
    nix-index-database.url = "github:nix-community/nix-index-database";
    nix-index-database.inputs.nixpkgs.follows = "nixpkgs";
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-gl-host.url = "github:numtide/nix-gl-host";
    nix-flox = {
      url = "github:flox/flox";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    #nur.url = "github:nix-community/NUR";
    #    lix = {
    #      url = "https://git.lix.systems/lix-project/lix/archive/main.tar.gz";
    #      flake = false;
    #    };

    #    lix-module = {
    #      url = "https://git.lix.systems/lix-project/nixos-module/archive/main.tar.gz";
    #      inputs.nixpkgs.follows = "nixpkgs";
    #      inputs.lix.follows = "lix";
    #    };

    #    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    # lix-module = {
    #  url = "https://git.lix.systems/lix-project/nixos-module/archive/2.93.3-1.tar.gz";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};
    #    zen-browser.url = "github:0xc000022070/zen-browser-flake";
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
    {
      self,
      nixpkgs,
      nixpkgs-stable,
      #lix-module,
      #lix,
      nvf,
      nur,
      nix-index-database,
      nix-gl-host,
      nix-flox,
      ...
    }@inputs:
    {
      packages.x86_64-linux.nix-gl-host = nix-gl-host.defaultPackage.x86_64-linux;
      nixosConfigurations = {
        yoshi = nixpkgs.lib.nixosSystem {
          specialArgs =
            let
              system = "x86_64-linux";
            in
            {
              # To use packages from nixpkgs-stable,
              # we configure some parameters for it first
              pkgs-stable = import nixpkgs-stable {
                inherit system;
                # To use Chrome, we need to allow the
                # installation of non-free software.
                config.allowUnfree = true;
              };
              # pkgs-fd40cef8d = import nixpkgs-fd40cef8d {
              # inherit system;
              #config.allowUnfree = true;
              #};
            };
          modules = [
            #inputs.isd.default
            #lix-module.nixosModules.default
            nvf.nixosModules.default
            nix-flox.nixosModules.flox
            nix-index-database.nixosModules.default
            { programs.nix-index-database.comma.enable = true; }
            nur.modules.nixos.default
            ./configuration.nix
          ];
        };
      };
    };
}
