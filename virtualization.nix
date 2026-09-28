{
  config,
  lib,
  modulesPath,
  ...
}:
{
  virtualisation = {
    incus = {
      enable = true;
      ui.enable = true;

      preseed = {
        networks = [
          {
            name = "incus";
            type = "bridge";
            config = {
              "ipv4.address" = "auto";
              "ipv4.nat" = "true";
              "ipv4.firewall" = "false";
              "ipv6.address" = "auto";
              "ipv6.nat" = "true";
              "ipv6.firewall" = "false";
            };
          }
        ];

        profiles = [
          {
            name = "default";
            description = "Default Incus Profile";

            devices = {
              eth0 = {
                name = "eth0";
                network = "incus";
                type = "nic";
              };

              root = {
                path = "/";
                pool = "default";
                type = "disk";
              };
            };
          }

          {
            name = "bridged";
            description = "Instances bridged to LAN";

            devices = {
              eth0 = {
                name = "eth0";
                nictype = "bridged";
                parent = "cloudrouter";
                type = "nic";
              };

              root = {
                path = "/";
                pool = "default";
                type = "disk";
              };
            };
          }
        ];

        storage_pools = [
          {
            config = {
              source = "/data/libvirt/incus";
            };

            driver = "dir";
            name = "default";
          }
        ];
      };
    };

    podman = {
      enable = true;
      # Create a `docker` alias for podman, to use it as a drop-in replacement
      dockerCompat = true;
      # Required for containers under podman-compose to be able to talk to each other.
      defaultNetwork.settings.dns_enabled = true; # release 23.05
    };

    libvirtd.enable = true;
  };
}
