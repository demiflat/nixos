{ config, lib, modulesPath, ... }:
{
  programs.bcc.enable = true;
  programs.sysdig.enable = true;
  programs.dconf.enable = true;
  programs.direnv.enable = true;
  programs.mtr.enable = true;
  programs.wireshark.enable = true;
  programs.iotop.enable = true;
  programs.iftop.enable = true;
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
#    plugins = [
#      pkgs.vimPlugins.nvim-treesitter.withAllGrammars
#    ];
  };
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  programs.bash.vteIntegration = true;
  
  programs.chromium.enable = true;
  programs.criu.enable = true;
  programs.evince.enable = true;
  programs.file-roller.enable = true;
  programs.firefox.enable = true;
  programs.fish.enable = true;
  programs.git.enable = true;
  programs.git.prompt.enable = true;
  programs.htop.enable = true;
  programs.iotop.enable = true;
  programs.mosh.enable = true;

  programs.sway.enable = true;
  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  #programs.waybar.enable = true;
  security.polkit.enable = true;
  programs.fish.enable = true;

  # Avoid TOFU MITM with github by providing their public key here.
  programs.ssh.knownHosts = {
    "github.com".hostNames = [ "github.com" ];
    "github.com".publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOMqqnkVzrm0SdG6UOoqKLsabgH5C9okWi0dh2l9GKJl";

    "gitlab.com".hostNames = [ "gitlab.com" ];
    "gitlab.com".publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAfuCHKVTjquxvt6CM6tdG4SLp1Btn/nOeHHE5UOzRdf";

    "git.sr.ht".hostNames = [ "git.sr.ht" ];
    "git.sr.ht".publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMZvRd4EtM7R+IHVMWmDkVU3VLQTSwQDSAvW0t2Tkj60";
  };
        
}
