# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, inputs, lib, pkgs, modulesPath, ... }:

{
  imports =
    [
     ./boot.nix 
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
     ./qt.nix
     ./programs.nix
     ./virtualization.nix
     ./rocm.nix
    #  ./jupiter.nix
    ];

  nix = {
    extraOptions = "experimental-features = nix-command flakes cgroups";
    registry = {
      nixpkgs = {
        flake = inputs.nixpkgs;
      };
    };

    nixPath = [
      "nixpkgs=${inputs.nixpkgs.outPath}"
      "nixos-config=/etc/nixos/configuration.nix"
      "/nix/var/nix/profiles/per-user/root/channels"
    ];
    gc.automatic = true;
    settings = {
      trusted-users = [ "root" "dak" ];
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
    # https://nixos.org/manual/nixos/stable/options#opt-nix.daemonCPUSchedPolicy
    #daemonCPUSchedPolicy = "other"; # default "other", server "batch", desktop "idle"
    #daemonIOSchedClass = "best-effort"; # default "best-effort"
    #daemonIOSchedPriority = 7;
    #package = pkgs.nixFlakes;
  };

  # For the hacking.
  documentation = {
    man.enable = true;
    doc.enable = true;
    dev.enable = true;
    info.enable = true;
    nixos.enable = true;
  };

  # Make more wayland things like screensharing work.
  #xdg.portal = {
  #  enable = true;
  #  wlr.enable = true;
  #  xdgOpenUsePortal = true;
  #  extraPortals = [ 
  #    pkgs.xdg-desktop-portal-hyprland
  #    #pkgs.xdg-desktop-portal-gtk
  #  ];
  #};

  # # Bootloader
  # boot.kernelParams = [ "mitigations=off" ];

  # # use TCP BBR has significantly increased throughput and reduced latency for connections
  # boot.kernel.sysctl = {
  #   "net.core.default_qdisc" = "fq_codel";
  #   "net.ipv4.tcp_congestion_control" = "bbr";
  # };

  # boot.extraModprobeConfig = "options kvm_amd nested=1";

  # boot.loader.systemd-boot.consoleMode = "max";
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.systemd-boot.configurationLimit = 3;
  # boot.loader.efi.canTouchEfiVariables = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";

  # networking.hostName = "yoshi"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # # Set your time zone.
  # time.timeZone = "America/Los_Angeles";

  # # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";

  # i18n.extraLocaleSettings = {
  #   LC_ADDRESS = "en_US.UTF-8";
  #   LC_IDENTIFICATION = "en_US.UTF-8";
  #   LC_MEASUREMENT = "en_US.UTF-8";
  #   LC_MONETARY = "en_US.UTF-8";
  #   LC_NAME = "en_US.UTF-8";
  #   LC_NUMERIC = "en_US.UTF-8";
  #   LC_PAPER = "en_US.UTF-8";
  #   LC_TELEPHONE = "en_US.UTF-8";
  #   LC_TIME = "en_US.UTF-8";
  # };

  # # Enable the gnome windowing system.
  # services.xserver = {
  #   enable = true;
  #   layout = "us";
  #   xkbVariant = "";
  #   videoDrivers = [ "amdgpu" ];
  #   displayManager.gdm.enable = true;
  #   displayManager.gdm.wayland = true;
  #   desktopManager.gnome.enable = true;
  # };

  # qt compatibility with gtk
#  qt.enable = true;
#  qt.platformTheme = "gnome";
#  #qt.style = "adwaita-dark"; 
#  qt.style = "kvantum"; 

#qt = {
#  enable = true;
#
#  platformTheme = "qt5ct";
#  #platformTheme = "gnome";
#  #platformTheme = "gtk2";
#
#  style = "kvantum";
#  #style = "adwaita-dark";
#};

  # # Enable CUPS to print documents.
  # services.printing.enable = true;

#   # Enable sound with pipewire.
#   sound.enable = true;
#   security.rtkit.enable = true;

#   hardware.pulseaudio.enable = false;

#   services.pipewire = {
#     enable = true;
#     alsa.enable = true;
#     alsa.support32Bit = true;
#     pulse.enable = true;
#     jack.enable = true;

#     # use the example session manager (no others are packaged yet so this is enabled by default,
#     # no need to redefine it in your config for now)
#     #media-session.enable = true;
#   };

#   # Enable touchpad support (enabled default in most desktopManager).
#   # services.xserver.libinput.enable = true;

#   #services.clickhouse.enable = true;

#   services.mullvad-vpn.enable = true;

#   # udev
#   services.udev.extraRules = ''
# # solokey  
# SUBSYSTEMS=="usb", ATTRS{idVendor}=="1d6b", ATTRS{idProduct}=="0002", TAG+="uaccess", MODE="0666", SYMLINK+="solo"
# # cidoo
# SUBSYSTEMS=="usb", ATTRS{idVendor}=="1ea7", ATTRS{idProduct}=="7777", TAG+="uaccess", MODE="0666", SYMLINK+="cidoo"
#   '';

  # security.sudo.enable = true;
  # security.sudo.wheelNeedsPassword = false;

  # security.tpm2.enable = true;
  # security.tpm2.pkcs11.enable = true;
  # security.tpm2.tctiEnvironment.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  # environment.systemPackages = with pkgs; [
  # #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  # #  wget
  # ];
  #environment.etc = {
  #  "xdg/gtk-2.0/gtkrc".text = "gtk-error-bell=0";
  #  "xdg/gtk-3.0/settings.ini".text = ''
  #    [Settings]
  #    gtk-error-bell=false
  #    gtk-application-prefer-dark-theme=1
  #  '';
  #  "xdg/gtk-4.0/settings.ini".text = ''
  #    [Settings]
  #    gtk-error-bell=false
  #    gtk-application-prefer-dark-theme=1
  #  '';
  #};

  # # Print the URL instead on servers
  # environment.variables.BROWSER = "echo";

#  environment.systemPackages = [
#  ];

 environment.etc."current-system-packages".text =
  let
    packages = builtins.map (p: "${p.name}") config.environment.systemPackages;
    sortedUnique = builtins.sort builtins.lessThan (lib.unique packages);
    formatted = builtins.concatStringsSep "\n" sortedUnique;

  in
    formatted;

  # virtualisation.cri-o.enable = true;
  # virtualisation.cri-o.runtime = "crun";
  # #virtualisation.cri-o.settings = { "crun"; }
  # virtualisation.cri-o.storageDriver = "btrfs";

  # virtualisation.libvirtd = {
  #   enable = true;
  #   qemu.ovmf.enable = true;
  # };

#   programs.bcc.enable = true;
#   programs.sysdig.enable = true;
#   programs.dconf.enable = true;
#   programs.direnv.enable = true;
#   programs.mtr.enable = true;
#   programs.neovim = {
#     enable = true;
#     defaultEditor = true;
#     viAlias = true;
#     vimAlias = true;
# #    plugins = [
# #      pkgs.vimPlugins.nvim-treesitter.withAllGrammars
# #    ];
#   };
#   programs.gnupg.agent = {
#     enable = true;
#     enableSSHSupport = true;
#   };

  # # List services that you want to enable:
  # # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
  # services.openssh = {
  #   settings.X11Forwarding = false;
  # #  settings.KbdInteractiveAuthentication = false;
  # #  settings.PasswordAuthentication = false;
  #   settings.UseDns = false;

  #   # Use key exchange algorithms recommended by `nixpkgs#ssh-audit`
  #   settings.KexAlgorithms = [
  #     "curve25519-sha256"
  #     "curve25519-sha256@libssh.org"
  #     "diffie-hellman-group16-sha512"
  #     "diffie-hellman-group18-sha512"
  #     "sntrup761x25519-sha512@openssh.com"
  #   ];
  #   # Only allow system-level authorized_keys to avoid injections.
  #   # We currently don't enable this when git-based software that relies on this is enabled.
  #   # It would be nicer to make it more granular using `Match`.
  #   # However those match blocks cannot be put after other `extraConfig` lines
  #   # with the current sshd config module, which is however something the sshd
  #   # config parser mandates.
  #   authorizedKeysFiles = lib.mkIf (!config.services.gitea.enable && !config.services.gitlab.enable && !config.services.gitolite.enable && !config.services.gerrit.enable)
  #     (lib.mkForce [ "/etc/ssh/authorized_keys.d/%u" ]);

  #   # unbind gnupg sockets if they exists
  #   extraConfig = "StreamLocalBindUnlink yes";
  # };
  # programs.sway.enable = true;
  # security.polkit.enable = true;
  # programs.fish.enable = true;

#   # firefox
#   environment.sessionVariables = {
#      MOZ_ENABLE_WAYLAND = "1";
#      MOZ_DBUS_REMOTE = "1";
#  #    XDG_CURRENT_DESKTOP = "sway"; 
#   };

#   # fonts
#   fonts = {
#     enableDefaultFonts = true;
#     fonts = with pkgs; [ 
#       nerdfonts
#     ];

#     fontconfig = {
#       defaultFonts = {
# #        serif = [ "NotoSerif Nerd Font Propo" ];
# #        sansSerif = [ "FiraCode Nerd Font Propo" ];
#         monospace = [ "FiraCode Nerd Font Mono" ];
#       };
#     };
#   };

  # # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ 80 8080 8888 ];
  # # networking.firewall.allowedUDPPorts = [ ... ];
  # # Or disable the firewall altogether.
  # networking.firewall.enable = true;
  # # Allow PMTU / DHCP
  # networking.firewall.allowPing = true;

  # # Keep dmesg/journalctl -k output readable by NOT logging
  # # each refused connection on the open internet.
  # networking.firewall.logRefusedConnections = false;

  # # The notion of "online" is a broken concept
  # # https://github.com/systemd/systemd/blob/e1b45a756f71deac8c1aa9a008bd0dab47f64777/NEWS#L1
  # systemd.services.NetworkManager-wait-online.enable = false;
  # systemd.network.wait-online.enable = false;
  # # Do not take down the network for too long when upgrading,
  # # This also prevents failures of services that are restarted instead of stopped.
  # # It will use `systemctl restart` rather than stopping it with `systemctl stop`
  # # followed by a delayed `systemctl start`.
  # systemd.services.systemd-networkd.stopIfChanged = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

  # # Avoid TOFU MITM with github by providing their public key here.
  # programs.ssh.knownHosts = {
  #   "github.com".hostNames = [ "github.com" ];
  #   "github.com".publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOMqqnkVzrm0SdG6UOoqKLsabgH5C9okWi0dh2l9GKJl";

  #   "gitlab.com".hostNames = [ "gitlab.com" ];
  #   "gitlab.com".publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAfuCHKVTjquxvt6CM6tdG4SLp1Btn/nOeHHE5UOzRdf";

  #   "git.sr.ht".hostNames = [ "git.sr.ht" ];
  #   "git.sr.ht".publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMZvRd4EtM7R+IHVMWmDkVU3VLQTSwQDSAvW0t2Tkj60";
  # };
}
