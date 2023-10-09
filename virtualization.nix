{ config, lib, modulesPath, ... }:
{
  virtualisation.cri-o.enable = true;
  virtualisation.cri-o.runtime = "crun";
  #virtualisation.cri-o.settings = { "crun"; }
  virtualisation.cri-o.storageDriver = "btrfs";

  virtualisation.libvirtd = {
    enable = true;
    qemu.ovmf.enable = true;
  };

}