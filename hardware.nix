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
    "nvidia"
    "i2c-dev"
  ];
  boot.kernelModules = [
    "kvm-amd"
    "amdgpu"
    "nvidia"
    "i2c-dev"
    "usblp"
  ];

  fileSystems."/" = {
    device = "/dev/disk/by-label/nixos";
    fsType = "btrfs";
    options = [
      "subvol=@"
      "compress=zstd"
    ];
  };

  fileSystems."/nix" = {
    device = "/dev/disk/by-label/nixos";
    fsType = "btrfs";
    options = [
      "subvol=nix"
      "compress=zstd"
      "noatime"
    ];
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-label/boot";
    fsType = "ext4";
  };

  fileSystems."/boot/efi" = {
    device = "/dev/disk/by-label/efi";
    fsType = "vfat";
    options = [
      "uid=0"
      "gid=0"
      "fmask=0077"
      "dmask=0077"
    ];
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

  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
    cpu.amd.updateMicrocode = true;
    amdgpu = {
      initrd.enable = true;
      opencl.enable = true;
      overdrive.ppfeaturemask = "0xffffffff";
    };
    enableRedistributableFirmware = true;
    graphics.enable = true;
    ksm.enable = true;

    nvidia = {
      branch = "latest";
      open = true;
      modesetting.enable = true;
      powerManagement.enable = true;
      nvidiaSettings = true;
    };
    nvidia-container-toolkit.enable = true;

    libftdi.enable = true;
    i2c.enable = true;
    keyboard.qmk.enable = true;
    printers = {
      ensureDefaultPrinter = "color";
      ensurePrinters = [
        {
          deviceUri = "ipp://10.1.1.111:631";
          location = "home";
          name = "color";
          model = "everywhere";
        }
      ];
    };
    rtl-sdr.enable = true;
    sane = {
      enable = true;
      drivers.scanSnap.enable = true;
    };
    usbStorage.manageShutdown = true;
    sensor = {
      hddtemp.enable = true;
      hddtemp.drives = [
        "/dev/nvme0"
        "/dev/nvme1"
      ];
    };
  };
}
