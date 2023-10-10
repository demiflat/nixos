{ config, lib, modulesPath, ... }:
{
  
virtualisation = {
  podman = {
    enable = true;
    # Create a `docker` alias for podman, to use it as a drop-in replacement
    dockerCompat = true;
    # Required for containers under podman-compose to be able to talk to each other.
    defaultNetwork.settings.dns_enabled = true; # release 23.05
    # defaultNetwork.dnsname.enable = true; # use with older releases
  };

#  oci-containers = {
#    backend = "podman";
#
#    containers = {
#      homer = import ./containers/homer.nix;
#      caddy = import ./containers/caddy.nix; # Add manually the Caddyfile before using this container
#    };
#  };

  cri-o.enable = true;
  cri-o.runtime = "crun";
  #cri-o.settings = { ""; }
  cri-o.storageDriver = "btrfs";

  libvirtd = {
    enable = true;
    qemu.ovmf.enable = true;
  };

}
