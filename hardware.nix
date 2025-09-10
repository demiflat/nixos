{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}:
{
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];

  boot.initrd.systemd.enable = true;
  boot.initrd.availableKernelModules = [
    "xhci_pci"
    "ahci"
    "nvme"
    "usbhid"
    "usb_storage"
    "sd_mod"
  ];
  boot.initrd.kernelModules = [
    "kvm-amd"
    "amdgpu"
    "i2c-dev"
  ];
  boot.kernelModules = [
    "kvm-amd"
    "amdgpu"
    "i2c-dev"
  ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "/dev/disk/by-label/nixos";
    fsType = "btrfs";
    options = [
      "subvol=@"
      "compress=zstd"
    ];
  };

  # fileSystems."/nix" =
  #   { device = "/dev/disk/by-label/nixos";
  #     fsType = "btrfs";
  #     options = [ "subvol=nix" "compress=zstd" "noatime" ];
  #   };

  fileSystems."/boot" = {
    device = "/dev/disk/by-label/boot";
    fsType = "ext4";
  };

  fileSystems."/boot/efi" = {
    device = "/dev/disk/by-label/efi";
    fsType = "vfat";
  };

  fileSystems."/home" = {
    device = "/dev/disk/by-label/home";
    fsType = "btrfs";
    options = [ "subvol=@" ];
  };

  fileSystems."/development" = {
    device = "/dev/disk/by-label/development";
    fsType = "btrfs";
    options = [ "subvol=@" ];
  };

  fileSystems."/data" = {
    device = "/dev/disk/by-label/data";
    fsType = "btrfs";
    options = [ "subvol=@" ];
  };
  swapDevices = [ ];

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";

  # specific hardware
  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
    cpu.amd.updateMicrocode = true;
    enableRedistributableFirmware = true;
    graphics.enable = true;
    #    graphics.extraPackages = with pkgs; [
    #amdvlk
    #rocmPackages.clr
    #rocm-opencl-icd
    #rocm-opencl-runtime
    #    ];
    keyboard.qmk.enable = true;
    sane.enable = true;
    # pulseaudio.enable = false;
    #    printers = {
    #      ensurePrinters = [
    #
    #      ];
    #    };
  };
}
