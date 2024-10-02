{
  config,
  lib,
  modulesPath,
  ...
}: {
  services.resolved = {
    enable = true;
    dnssec = "false";
    llmnr = "false";
    #domains = [ "demiflat.org" ];
    fallbackDns = ["1.1.1.1#one.one.one.one" "1.0.0.1#one.one.one.one"];
    #extraConfig = ''
    #  DNSOverTLS=yes
    #'';
  };

  # Good for SSD
  services.fstrim = {
    enable = true;
  };

  # services.qemuGuest.enable = true;

  services.lldpd.enable = true;

  services.avahi = {
    enable = true;
    nssmdns4 = true;
  };

  services.fwupd.enable = true;

  # Enable the gnome windowing system.
  services.xserver = {
    enable = true;
    xkb.layout = "us";
    xkb.variant = "";
    videoDrivers = ["amdgpu"];
    displayManager.gdm.enable = true;
    displayManager.gdm.wayland = true;
    desktopManager.gnome.enable = true;
    xserver.displayManager.defaultSession = "hyprland";
    #    displayManager.sddm.enable = true;
    #    displayManager.sddm.wayland.enable = true;
    #    desktopManager.plasma5.enable = true;
    #    desktopManager.plasma6.enable = true;
  };

  services.hypridle.enable = true;

  # gnome-keyring for the secrets management service. Also adds its
  # password prompter GUIs to the session bus's service list, so it
  # can fire interactive prompts for auth.
  services.gnome.gnome-keyring.enable = true;

  # Flatpak is useful to get a couple things that aren't packaged for
  # NixOS, like Parsec.
  services.flatpak.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;
  programs.system-config-printer.enable = true;

  # Enable sound with pipewire.
  #sound.enable = true;
  security.rtkit.enable = true;

  hardware.pulseaudio.enable = false;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    #    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  services.mullvad-vpn.enable = true;

  # udev
  services.udev.extraRules = ''
    # solokey
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="1d6b", ATTRS{idProduct}=="0002", TAG+="uaccess", MODE="0666", SYMLINK+="solo"
    # cidoo
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="1ea7", ATTRS{idProduct}=="7777", TAG+="uaccess", MODE="0666", SYMLINK+="cidoo"
  '';

  # List services that you want to enable:
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.openssh = {
    settings.X11Forwarding = false;
    #  settings.KbdInteractiveAuthentication = false;
    #  settings.PasswordAuthentication = false;
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
    # It would be nicer to make it more granular using `Match`.
    # However those match blocks cannot be put after other `extraConfig` lines
    # with the current sshd config module, which is however something the sshd
    # config parser mandates.
    authorizedKeysFiles =
      lib.mkIf (!config.services.gitea.enable && !config.services.gitlab.enable && !config.services.gitolite.enable && !config.services.gerrit.enable)
      (lib.mkForce ["/etc/ssh/authorized_keys.d/%u"]);

    # unbind gnupg sockets if they exists
    extraConfig = "StreamLocalBindUnlink yes";
  };

  #services.netbird.enable = true;

  #services.jupyter = {
  #  enable = true;
  #  user = "jupyter";
  #  group = "jupyter";
  #  password = "'sha1:1b961dc713fb:88483270a63e57d18d43cf337e629539de1436ba'";
  #  port = 9999;
  #};

  #  services.jupyterhub.enable = true;
  # services.ollama = {
  #   enable = true;
  #   acceleration = "rocm";
  #   environmentVariables = {
  #     HCC_AMDGPU_TARGET = "gfx900";
  #     HSA_OVERRIDE_GFX_VERSION = "9.0.0";
  #     HSA_ENABLE_SDMA = "0";
  #   };
  #   rocmOverrideGfx = "9.0.0";
  # };

  #  services.tabby.enable = true;
  #  services.tabby.acceleration = "rocm";

  #  services.clickhouse.enable = true;
  services.usbmuxd.enable = true;
  services.pcscd.enable = true;
}
