{ config, lib, modulesPath, ... }:
{
  # Enable networking
  networking.networkmanager.enable = false;
  networking.iproute2.enable = true;

  networking = {
    useNetworkd = true;
    hostName = "yoshi";
    domain = "demiflat.org";
    fqdn = "yoshi.demiflat.org";
    search = [ "demiflat.org" ];
  };

  # networking.wireless = {
  #   enable = true;
  #   userControlled.enable = true;
  #   networks = {
  #     shire = {
  #       pskRaw = "af47317b5ca6818ee7d799e00b988d93c9cc1ab9b6cce907703348feba94ffb2";
  #     };
  #   };
  # };

  systemd.network.enable = true;
  
  systemd.network = {
    links."10-lan" = {
      matchConfig.PermanentMACAddress = "3c:7c:3f:d9:a1:0a";
      linkConfig.Name = "lan";
    };
    # links."10-wifi" = {
    #   matchConfig.PermanentMACAddress = "98:48:27:46:90:76";
    #   linkConfig.Name = "wifi";
    # };    
    netdevs = {
      "20-cloud" = {
        netdevConfig = {
          Kind = "vlan";
          Name = "cloud";
        };
        vlanConfig.Id = 25;
      };      
      "21-sonic" = {
        netdevConfig = {
          Kind = "vlan";
          Name = "sonic";
        };
        vlanConfig.Id = 5;
      };
      "22-public" = {
        netdevConfig = {
          Kind = "vlan";
          Name = "public";
        };
        vlanConfig.Id = 15;
      };
      "23-iot" = {
        netdevConfig = {
          Kind = "vlan";
          Name = "iot";
        };
        vlanConfig.Id = 99;
      };
    };

    networks = {
      "30-lan" = {
        matchConfig.Name = "lan";
        # tag vlan on this link
        vlan = [
          "sonic"
          "public"
          "cloud"
          "iot"
        ];
#        address = [
#          "10.1.1.213/24"
#        ];
#        routes = [
#          { routeConfig.Gateway = "10.1.1.1"; }
#        ];
        networkConfig = {
          DHCP = "yes";
          DNSSEC = "no";
          ConfigureWithoutCarrier = "no";
          IPv6PrivacyExtensions = "no";
          DefaultRouteOnDevice = "yes";
        };
        # dhcpV4Config.UseHostname = "yes"; #default
        # dhcpV4Config.SendHostname = "yes"; #default
        # dhcpV4Config.Hostname = "yoshi";
        # dhcpV4Config.RouteMetric = 10;
        # dhcpV6Config.RouteMetric = 10;
        # ipv6AcceptRAConfig = {
        #   DHCPv6Client = "always";
        #   UseDNS = false;
        # };
        domains = [ "demiflat.org" ];
        linkConfig.RequiredForOnline = "routable";
      };
      # "30-wifi" = {
      #   matchConfig.Name = "wifi";
      #   networkConfig = {
      #     DHCP = "yes";
      #     DNSSEC = "no";
      #     ConfigureWithoutCarrier = "no";
      #     IPv6PrivacyExtensions = "no";
      #     IgnoreCarrierLoss = "3s";
      #   };
      #   dhcpV4Config.UseHostname = "yes";
      #   dhcpV4Config.SendHostname = "yes";
      #   dhcpV4Config.Hostname = "yoshi";
      #   dhcpV4Config.RouteMetric = 1024;
      #   dhcpV6Config.RouteMetric = 1024;
      #   ipv6AcceptRAConfig = {
      #     DHCPv6Client = "always";
      #     UseDNS = true;
      #   };        
      #   domains = [ "demiflat.org" ];
      #   linkConfig.RequiredForOnline = "no";
      # };     
      "40-cloud" = {
        matchConfig.Name = "cloud";
        networkConfig = {
          DHCP = "ipv4";
          DNSSEC = "no";
          DefaultRouteOnDevice = "no";
          ConfigureWithoutCarrier = "no";
          IPv6PrivacyExtensions = "no";
        };
        dhcpV4Config.RouteMetric = 2048; 
        dhcpV6Config.RouteMetric = 2048; 
        linkConfig.RequiredForOnline = "no";
      };       
      "41-sonic" = {
        matchConfig.Name = "sonic";
        networkConfig = {
          DHCP = "ipv4";
          DNSSEC = "no";
          DefaultRouteOnDevice = "no";
          ConfigureWithoutCarrier = "no";
          IPv6PrivacyExtensions = "no";
        };
        dhcpV4Config.RouteMetric = 2048; 
        dhcpV6Config.RouteMetric = 2048; 
        linkConfig.RequiredForOnline = "no";
      };
      "42-iot" = {
        matchConfig.Name = "iot";
        networkConfig = {
          DHCP = "ipv4";
          DNSSEC = "no";
          DefaultRouteOnDevice = "no";
          ConfigureWithoutCarrier = "no";
          IPv6PrivacyExtensions = "no";
        };
        dhcpV4Config.RouteMetric = 2048; 
        dhcpV6Config.RouteMetric = 2048; 
        linkConfig.RequiredForOnline = "no";
      };      
      "43-public" = {
        matchConfig.Name = "public";
        networkConfig = {
          DHCP = "ipv4";
          DNSSEC = "no";
          DefaultRouteOnDevice = "no";
          ConfigureWithoutCarrier = "no";
          IPv6PrivacyExtensions = "no";
        };
        dhcpV4Config.RouteMetric = 2048; 
        dhcpV6Config.RouteMetric = 2048; 
        linkConfig.RequiredForOnline = "no";
      };
      # "50-shire" = {
      #   matchConfig = { 
      #     Name = "wifi";
      #     SSID = "shire";
      #   };
      #   networkConfig = {
      #     DHCP = "yes";
      #     DNSSEC = "no";
      #     DefaultRouteOnDevice = "no";
      #     ConfigureWithoutCarrier = "no";
      #   };
      #   dhcpV4Config.RouteMetric = 1024; 
      #   ipv6AcceptRAConfig = {
      #     DHCPv6Client = "always";
      #     UseDNS = true;
      #   };         
      #   linkConfig.RequiredForOnline = "no";
      # };
    };
  };
  
  # Open ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 80 8080 8888 ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = true;
  # Allow PMTU / DHCP
  networking.firewall.allowPing = true;

  # Keep dmesg/journalctl -k output readable by NOT logging
  # each refused connection on the open internet.
  networking.firewall.logRefusedConnections = false;

  # The notion of "online" is a broken concept
  # https://github.com/systemd/systemd/blob/e1b45a756f71deac8c1aa9a008bd0dab47f64777/NEWS#L1
  systemd.services.NetworkManager-wait-online.enable = false;
  systemd.network.wait-online.enable = false;
  # Do not take down the network for too long when upgrading,
  # This also prevents failures of services that are restarted instead of stopped.
  # It will use `systemctl restart` rather than stopping it with `systemctl stop`
  # followed by a delayed `systemctl start`.
  systemd.services.systemd-networkd.stopIfChanged = false;

}
