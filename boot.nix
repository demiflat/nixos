{ config, lib, modulesPath, pkgs, ... }:
{

  # Bootloader
  boot.kernelParams = [
    "mitigations=off"
    "video=card0-DP-1:2560x1440@59.95"
    "video=card0-DP-2:2560x1440@59.95"
  ];

  # use TCP BBR has significantly increased throughput and reduced latency for connections
  boot.kernel.sysctl = {
    "net.core.default_qdisc" = "fq_codel";
    "net.ipv4.tcp_congestion_control" = "bbr";
    # Generate stable, but per-boot random SLAAC addresses, don't use EUI64.
    # "net.ipv6.conf.all.addr_gen_mode" = 3;
  };

  boot.extraModprobeConfig = "options kvm_amd nested=1";

  boot.loader.timeout = 2;
  boot.loader.systemd-boot.consoleMode = "max";
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 3;
  boot.loader.systemd-boot.memtest86.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
  # boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelModules = [ "8821au" ];
  boot.extraModulePackages = [
    config.boot.kernelPackages.rtl8821au
    confib.boot.kernelPackages.exfat-nofuse
  ];
  
}
