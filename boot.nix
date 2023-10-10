{ config, lib, modulesPath, ... }:
{

  # Bootloader
  boot.kernelParams = [ "mitigations=off" ];

  # use TCP BBR has significantly increased throughput and reduced latency for connections
  boot.kernel.sysctl = {
    "net.core.default_qdisc" = "fq";
    "net.ipv4.tcp_congestion_control" = "bbr";
    # Generate stable, but per-boot random SLAAC addresses, don't use EUI64.
    "net.ipv6.conf.all.addr_gen_mode" = 3;
  };

  boot.extraModprobeConfig = "options kvm_amd nested=1";

  boot.loader.systemd-boot.consoleMode = "max";
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 3;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  
}
