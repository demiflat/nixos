{
  config,
  lib,
  modulesPath,
  pkgs,
  ...
}:
{
  # Bootloader
  boot.kernelParams = [
    "mitigations=off"
    "video=card0-DP-1:2560x1440@240"
    "video=card0-DP-2:2560x1440@240"
  ];

  # use TCP BBR has significantly increased throughput and reduced latency for connections
  boot.kernel.sysctl = {
    "net.core.default_qdisc" = "fq_codel";
    "net.ipv4.tcp_congestion_control" = "bbr";
  };

  boot.extraModprobeConfig = "options kvm_amd nested=1";

  boot.loader.timeout = 2;
  boot.loader.systemd-boot.consoleMode = "max";
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 3;
  boot.loader.systemd-boot.memtest86.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  boot.kernelPackages = pkgs.linuxPackages_zen;

  # nixos-container support
  boot.enableContainers = true;
}
