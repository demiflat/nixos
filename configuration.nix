# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [
     ./hardware-configuration.nix 
     ./packages.nix
     ./users.nix
    ];

  nix = {
    extraOptions = "experimental-features = nix-command flakes";
    package = pkgs.nixFlakes;
  };

  # Bootloader
  boot.kernelParams = [ "mitigations=off" ];

  boot.extraModprobeConfig = "options kvm_amd nested=1";

  boot.loader.systemd-boot.consoleMode = "max";
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 3;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  networking.hostName = "yoshi"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = false;

  networking = {
    useNetworkd = true;
    domain = "demiflat.org";
  };

  systemd.network = {
    netdevs = {
      "20-sonic" = {
        netdevConfig = {
          Kind = "vlan";
          Name = "sonic";
        };
        vlanConfig.Id = 5;
      };
      "20-public" = {
        netdevConfig = {
          Kind = "vlan";
          Name = "public";
        };
        vlanConfig.Id = 15;
      };
      "20-cloud" = {
        netdevConfig = {
          Kind = "vlan";
          Name = "cloud";
        };
        vlanConfig.Id = 25;
      };
      "20-iot" = {
        netdevConfig = {
          Kind = "vlan";
          Name = "iot";
        };
        vlanConfig.Id = 99;
      };
    };

    networks = {
      "30-enp5s0" = {
        matchConfig.Name = "enp5s0";
        # tag vlan on this link
        vlan = [
          "sonic"
          "public"
          "cloud"
          "iot"
        ];
        networkConfig.DHCP = "yes";
        domains = [ "demiflat.org" ];
        linkConfig.RequiredForOnline = "routable";
      };
      "40-sonic" = {
        matchConfig.Name = "sonic";
        # add relevant configuration here
        networkConfig.DHCP = "ipv4";
        linkConfig.RequiredForOnline = "no";
      };
      "40-public" = {
        matchConfig.Name = "public";
        # add relevant configuration here
        networkConfig.DHCP = "ipv4";
        linkConfig.RequiredForOnline = "no";
      };
      "40-cloud" = {
        matchConfig.Name = "cloud";
        # add relevant configuration here
        networkConfig.DHCP = "ipv4";
        linkConfig.RequiredForOnline = "no";
      };
      "40-iot" = {
        matchConfig.Name = "iot";
        # add relevant configuration here
        networkConfig.DHCP = "ipv4";
        linkConfig.RequiredForOnline = "no";
      };
    };
  };

  services.resolved = {
    enable = true;
    dnssec = "false";
    #domains = [ "demiflat.org" ];
    #fallbackDns = [ "1.1.1.1#one.one.one.one" "1.0.0.1#one.one.one.one" ];
    #extraConfig = ''
    #  DNSOverTLS=yes
    #'';
  };

  # Set your time zone.
  time.timeZone = "America/Los_Angeles";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  hardware.sane.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  security.sudo.wheelNeedsPassword = false;

  security.tpm2.enable = true;
  security.tpm2.pkcs11.enable = true;
  security.tpm2.tctiEnvironment.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  # environment.systemPackages = with pkgs; [
  # #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  # #  wget
  # ];
  environment.etc = {
    "xdg/gtk-2.0/gtkrc".text = "gtk-error-bell=0";
    "xdg/gtk-3.0/settings.ini".text = ''
      [Settings]
      gtk-error-bell=false
      gtk-application-prefer-dark-them=1
    '';
    "xdg/gtk-4.0/settings.ini".text = ''
      [Settings]
      gtk-error-bell=false
      gtk-application-prefer-dark-them=1
    '';
  };

  environment.systemPackages = [
    pkgs.qmk-udev-rules
    pkgs.logitech-udev-rules
    pkgs.teensy-udev-rules
    pkgs.platformio
    pkgs.openocd
    pkgs.virt-manager
  ];

  virtualisation.libvirtd.enable = true;
  programs.dconf.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # List services that you want to enable:
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  programs.sway.enable = true;
  security.polkit.enable = true;
  programs.fish.enable = true;

  # firefox
  environment.sessionVariables = {
     MOZ_ENABLE_WAYLAND = "1";
     MOZ_DBUS_REMOTE = "1";
 #    XDG_CURRENT_DESKTOP = "sway"; 
  };

  # fonts
  fonts = {
    enableDefaultFonts = true;
    fonts = with pkgs; [ 
      nerdfonts
    ];

    fontconfig = {
      defaultFonts = {
#        serif = [ "NotoSerif Nerd Font Propo" ];
#        sansSerif = [ "FiraCode Nerd Font Propo" ];
        monospace = [ "FiraCode Nerd Font Mono" ];
      };
    };
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

}
