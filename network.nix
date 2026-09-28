{
  config,
  lib,
  modulesPath,
  ...
}:
{
  networking = {
    # nftables backend for the firewall
    nftables.enable = true;
    useDHCP = false;
    nameservers = [ "10.1.1.1" ];
    networkmanager.enable = false;
    iproute2.enable = true;

    hostName = "yoshi";
    domain = "demiflat.org";
    search = [ "demiflat.org" ];

    firewall = {
      enable = true;
      allowPing = true;
      allowedTCPPorts = [
        80
        443
        8080
        8443
        8888
      ];
      # Keep dmesg/journalctl -k output readable by NOT logging
      # each refused connection on the open internet.
      logRefusedConnections = false;
      trustedInterfaces = [
        "virbr0"
        "cloud"
        "cloudrouter"
        "incus"
      ];
    };
  };

  networking.wireless.iwd.enable = true;

  systemd = {
    network = {
      enable = true;
      links."10-wired" = {
        matchConfig.PermanentMACAddress = "34:97:f6:31:ad:7a";
        linkConfig.Name = "wired";
      };
      links."10-aux" = {
        matchConfig.PermanentMACAddress = "34:97:f6:32:70:ca";
        linkConfig.Name = "aux";
      };
      links."10-wifi" = {
        matchConfig.PermanentMACAddress = "90:de:80:1c:69:d9";
        linkConfig.Name = "wifi";
      };
      netdevs = {
        "20-cloud" = {
          netdevConfig = {
            Kind = "vlan";
            Name = "cloud";
          };
          vlanConfig.Id = 25;
        };
        "25-cloudrouter" = {
          netdevConfig = {
            Kind = "bridge";
            Name = "cloudrouter";
          };
          bridgeConfig = {
            STP = "no";
            ForwardDelaySec = 0;
          };
        };
      };

      networks = {
        "30-wired" = {
          matchConfig.Name = "wired";
          # tag vlan on this link
          vlan = [ "cloud" ];
          routes = [
            {
              Gateway = "10.1.1.1";
            }
          ];
          networkConfig = {
            DHCP = "yes";
            DNSSEC = "no";
            DNS = "10.1.1.1";
            ConfigureWithoutCarrier = "no";
            IPv6PrivacyExtensions = "no";
          };
          dhcpV4Config.RouteMetric = 10;
          dhcpV4Config.UseDNS = "no";
          dhcpV6Config.UseDNS = "no";
          domains = [ "demiflat.org" ];
          linkConfig.RequiredForOnline = "routable";
        };
        "30-aux" = {
          matchConfig.Name = "aux";
          # tag vlan on this link
          vlan = [ "cloud" ];
          routes = [
            {
              Gateway = "10.1.1.1";
            }
          ];
          networkConfig = {
            DHCP = "yes";
            DNSSEC = "no";
            DNS = "10.1.1.1";
            ConfigureWithoutCarrier = "no";
            IPv6PrivacyExtensions = "no";
          };
          dhcpV4Config.RouteMetric = 1024;
          dhcpV4Config.UseDNS = "no";
          dhcpV6Config.UseDNS = "no";
          domains = [ "demiflat.org" ];
          linkConfig.RequiredForOnline = "routable";
        };
        "30-wifi" = {
          matchConfig.Name = "wifi";
          networkConfig = {
            DHCP = "yes";
            DNSSEC = "no";
            DNS = "10.1.1.1";
            ConfigureWithoutCarrier = "no";
            IPv6PrivacyExtensions = "no";
            IgnoreCarrierLoss = "3s";
          };
          dhcpV4Config.RouteMetric = 2048;
          dhcpV4Config.UseDNS = "no";
          dhcpV6Config.UseDNS = "no";
          domains = [ "demiflat.org" ];
          linkConfig.RequiredForOnline = "no";
        };
        "40-cloudrouter" = {
          matchConfig.Name = "cloudrouter";
          networkConfig = {
            DHCP = "ipv4";
            DNSSEC = "no";
            DefaultRouteOnDevice = "no";
            ConfigureWithoutCarrier = "no";
            IPv6PrivacyExtensions = "no";
          };
          dhcpV4Config.UseRoutes = "no";
          dhcpV4Config.UseDNS = "no";
          linkConfig.RequiredForOnline = "no";
          dhcpV4Config.RouteMetric = 4096;
        };
        "60-cloud" = {
          matchConfig.Name = "cloud";
          networkConfig = {
            Bridge = "cloudrouter";
          };
        };
      };
    };
    # The notion of "online" is a broken concept
    # https://github.com/systemd/systemd/blob/e1b45a756f771deac8c1aa9a008bd0dab47f64777/NEWS#L1
    services.NetworkManager-wait-online.enable = false;
    network.wait-online.enable = false;
    # Do not take down the network for too long when upgrading,
    # This also prevents failures of services that are restarted instead of stopped.
    # It will use `systemctl restart` rather than stopping it with `systemctl stop`
    # followed by a delayed `systemctl start`.
    services.systemd-networkd.stopIfChanged = false;
  };
}
