{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./boot.nix
    ./greetd.nix
    ./kb.nix
    ./cpufreq.nix
    ./ddc.nix
    ./locale.nix
    ./environment.nix
    ./hardware.nix
    ./packages.nix
    ./users.nix
    ./network.nix
    ./security.nix
    ./services.nix
    ./systemd.nix
    ./qt.nix
    ./programs.nix
    ./virtualization.nix
    ./cuda.nix
  ];

  nix = {
    channel.enable = true;
    settings = {
      nix-path = config.nix.nixPath;
      cores = 8;
      trusted-users = [
        "root"
        "dak"
      ];
      extra-sandbox-paths = [
        "/dev/kfd"
        "/sys/devices/virtual/kfd"
        "/dev/dri/renderD128"
      ];
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
        "cgroups"
      ];
      extra-experimental-features = [
        "nix-command"
        "flakes"
        "cgroups"
      ];
      # Fallback quickly if substituters are not available.
      connect-timeout = 5;
      substituters = [
        "https://cache.nixos.org"
        "https://cache.nixos-cuda.org"
        "https://nix-community.cachix.org"
        "https://hyprland.cachix.org"
        "https://cache.flox.dev"
        "https://ros.cachix.org"
      ];
      trusted-public-keys = [
        "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
        "cache.nixos-cuda.org:74DUi4Ye579gUqzH4ziL9IyiJBlDpMRn9MBN8oNan9M="
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
        "flox-cache-public-1:7F4OyH7ZCnFhcze3fJdfyXYLQw/aV7GEed86nQ7IsOs="
        "ros.cachix.org-1:dSyZxI8geDCJrwgvCOHDoAfOm5sV1wCPjBkKL+38Rvo="
      ];
      # The default at 10 is rarely enough.
      log-lines = lib.mkDefault 25;
      # Avoid disk full issues
      max-free = lib.mkDefault (3000 * 1024 * 1024);
      min-free = lib.mkDefault (512 * 1024 * 1024);
      use-cgroups = true;
      system-features = [
        "kvm"
        "big-parallel"
      ];
    };
  };

  console.font = "${pkgs.kbd}/share/consolefonts/gr737b-9x16-medieval.psfu.gz";

  # For the hacking.
  documentation.dev.enable = true;

  nixpkgs.config = {
    allowUnfree = true;
    cudaSupport = true;
    input-fonts.acceptLicense = true;
  };

  environment.etc."current-system-packages".text =
    let
      packages = builtins.map (p: "${p.name}") config.environment.systemPackages;
      sortedUnique = builtins.sort builtins.lessThan (lib.unique packages);
      formatted = builtins.concatStringsSep "\n" sortedUnique;
    in
    formatted;

  system.stateVersion = "23.05";
}
