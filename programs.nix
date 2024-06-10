{
  config,
  lib,
  modulesPath,
  pkgs,
  ...
}: {
  programs = {
    bcc.enable = true;
    sysdig.enable = true;
    dconf.enable = true;
    direnv.enable = true;
    mtr.enable = true;
    wireshark.enable = true;
    iotop.enable = true;
    iftop.enable = true;
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
      #    plugins = [
      #      pkgs.vimPlugins.nvim-treesitter.withAllGrammars
      #    ];
    };
    ssh.startAgent = true;
    gnupg.agent = {
      enable = true;
      #    enableSSHSupport = true;
      pinentryPackage = pkgs.pinentry-curses;
    };

    bash.vteIntegration = true;

    chromium.enable = true;
    criu.enable = true;
    evince.enable = true;
    file-roller.enable = true;
    firefox.enable = true;
    git.enable = true;
    git.prompt.enable = true;
    htop.enable = true;
    mosh.enable = true;

    #  sway.enable = true;
    hyprland.enable = true;
    hyprland.xwayland.enable = true;
    waybar.enable = true;
    fish.enable = true;

    # Avoid TOFU MITM with github by providing their public key here.
    ssh.knownHosts = {
      "github.com".hostNames = ["github.com"];
      "github.com".publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOMqqnkVzrm0SdG6UOoqKLsabgH5C9okWi0dh2l9GKJl";

      "gitlab.com".hostNames = ["gitlab.com"];
      "gitlab.com".publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAfuCHKVTjquxvt6CM6tdG4SLp1Btn/nOeHHE5UOzRdf";

      "git.sr.ht".hostNames = ["git.sr.ht"];
      "git.sr.ht".publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMZvRd4EtM7R+IHVMWmDkVU3VLQTSwQDSAvW0t2Tkj60";
    };
  };
}
