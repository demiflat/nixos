{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    omniflake = {
      url = "github:fzakaria/omniflake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      omniflake,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        yoshi = nixpkgs.lib.nixosSystem {
          modules = [
            ./configuration.nix
            omniflake.flakes.nvf.nixosModules.default
            omniflake.flakes.nur.modules.nixos.default
            omniflake.flakes.nix-index-database.nixosModules.default
            { programs.nix-index-database.comma.enable = true; }
          ];
        };
      };
    };
}
