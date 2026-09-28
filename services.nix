{
  config,
  lib,
  modulesPath,
  pkgs,
  ...
}:
{
  services.lvm.boot.thin.enable = true;

  services.dbus.implementation = "broker";
  services.resolved = {
    enable = true;
    settings = {
      Resolve = {
        Domains = [
          "demiflat.org"
          "~."
        ];
        DNSSEC = "false";
        MulticastDNS = "resolve";
        LLMNR = "false";
        FallbackDNS = [
          "1.1.1.1#one.one.one.one"
          "1.0.0.1#one.one.one.one"
        ];
      };
    };
  };

  # Good for SSD
  services.fstrim.enable = true;

  services.hardware.openrgb = {
    enable = true;
    package = pkgs.openrgb-with-all-plugins;
    motherboard = "amd";
    server.port = 6742;
  };

  services.lldpd.enable = true;

  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  services.fwupd.enable = true;

  services.xserver = {
    enable = true;
    xkb.layout = "us";
    xkb.variant = "";
    videoDrivers = [
      "amdgpu"
      "nvidia"
    ];
  };

  services.hypridle.enable = true;
  services.elephant.enable = true;

  services.timesyncd.servers = [
    "time.sonic.net"
    "time2.sonic.net"
  ];

  # Flatpak is useful to get a couple things that aren't packaged for
  # NixOS, like Parsec.
  services.flatpak.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;
  services.printing.cups-pdf.enable = true;
  services.printing.browsed.enable = true;
  services.printing.drivers = [
    pkgs.cups-filters
    pkgs.cups-browsed
  ];

  programs.system-config-printer.enable = true;

  # Enable sound with pipewire.
  security.rtkit.enable = true;
  services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
    jack.enable = true;
  };

  services.gvfs.enable = true;

  services.udev.packages = with pkgs; [
    platformio-core.udev
    openocd
  ];

  # udev
  services.udev.extraRules = ''
    # solokey
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="1d6b", ATTRS{idProduct}=="0002", TAG+="uaccess", MODE="0666", SYMLINK+="solo"
    # NXP LPC55 ROM bootloader (unmodified)
    SUBSYSTEMS=="hidraw", ATTRS{idVendor}=="1fc9", ATTRS{idProduct}=="0021", TAG+="uaccess"
    # NXP LPC55 ROM bootloader (with Solo 2 VID:PID)
    SUBSYSTEMS=="hidraw", ATTRS{idVendor}=="1209", ATTRS{idProduct}=="b000", TAG+="uaccess"
    # Solo 2
    SUBSYSTEMS=="tty", ATTRS{idVendor}=="1209", ATTRS{idProduct}=="beee", TAG+="uaccess"
    # Solo 2
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="1209", ATTRS{idProduct}=="beee", TAG+="uaccess"
    # cidoo
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="1ea7", ATTRS{idProduct}=="7777", TAG+="uaccess", MODE="0666", SYMLINK+="cidoo"
    # escpos
    SUBSYSTEM=="usb", ATTRS{idVendor}=="0416", ATTRS{idProduct}=="5011", TAG+="uaccess"
  '';

  # List services that you want to enable:
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.openssh = {
    settings.X11Forwarding = false;
    settings.UseDns = false;

    # Use key exchange algorithms recommended by `nixpkgs#ssh-audit`
    settings.KexAlgorithms = [
      "curve25519-sha256"
      "curve25519-sha256@libssh.org"
      "diffie-hellman-group16-sha512"
      "diffie-hellman-group18-sha512"
      "sntrup761x25519-sha512@openssh.com"
    ];
    # Only allow system-level authorized_keys to avoid injections.
    # We currently don't enable this when git-based software that relies on this is enabled.
    # It would be nicer to make this more granular using `Match`.
    # However those match blocks cannot be put after other `extraConfig` lines
    # with the current sshd config module, which is however something the sshd
    # config parser mandates.
    authorizedKeysFiles = lib.mkIf (
      !config.services.gitea.enable
      && !config.services.gitlab.enable
      && !config.services.gitolite.enable
      && !config.services.gerrit.enable
    ) (lib.mkForce [ "/etc/ssh/authorized_keys.d/%u" ]);

    # unbind gnupg sockets if they exists
    extraConfig = "StreamLocalBindUnlink yes";
  };

  services.open-webui = {
    enable = false;
    port = 3000;
  };

  services.usbmuxd.enable = true;
  services.pcscd.enable = true;
  # logi mouse
  services.ratbagd.enable = true;
}
