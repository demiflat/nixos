{
  config,
  lib,
  modulesPath,
  ...
}:
{
  security.lsm = lib.mkForce [ ];
  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = false;

  security.tpm2.enable = true;
  security.tpm2.pkcs11.enable = true;
  security.tpm2.tctiEnvironment.enable = true;

  # unlock GPG keyring on login
  security.pam.services.greetd.gnupg.enable = true;
  security.pam.services.greetd.enableGnomeKeyring = true;

  systemd.services.cups.serviceConfig = {
    ##############
    # Networking #
    ##############
    RestrictAddressFamilies = "AF_INET AF_INET6 AF_NETLINK AF_UNIX";
    IPAddressDeny = "any";
    IPAddressAllow = [
      "localhost"
      "10.1.1.0/8"
    ];

    ###############
    # File system #
    ###############
    #  Note that the effect of these settings may be undone by privileged processes. In order to
    #  set up an effective sandboxed environment for a unit it is thus recommended to combine
    #  these settings with either CapabilityBoundingSet = ~CAP_SYS_ADMIN or
    #  SystemCallFilter = ~@mount.

    ProtectHome = true;
    ProtectSystem = "strict";
    ReadWritePaths = /etc/cups /etc/printcap /var/cache/cups /var/spool/cups
    LogsDirectory = "cups";
    RuntimeDirectory = "cups";
    PrivateTmp = true;

    ###################
    # User separation #
    ###################
    # PrivateUsers =  service runs as root
    # DynamicUser =  service runs as root

    ###########
    # Devices #
    ###########
    #PrivateDevices = yes

    ##########
    # Kernel #
    ##########
    ProtectKernelTunables = true;
    ProtectKernelModules = true;
    ProtectKernelLogs = true;

    ########
    # Misc #
    ########
    CapabilityBoundingSet = "CAP_CHOWN CAP_AUDIT_WRITE CAP_DAC_OVERRIDE CAP_FSETID CAP_KILL CAP_NET_BIND_SERVICE CAP_SETGID CAP_SETUID";
    # AmbientCapabilities =  service runs as root
    #NoNewPrivileges =  service needs "no" on this to function
    ProtectHostname = true;
    ProtectClock = true;
    ProtectControlGroups = true;
    RestrictNamespaces = true;
    LockPersonality = true;
    MemoryDenyWriteExecute = true;
    RestrictRealtime = true;
    RestrictSUIDSGID = true;
    # RemoveIPC =  service runs as root

    ################
    # System calls #
    ################
    SystemCallFilter = "@system-service";
    SystemCallArchitectures = "native";
  };

  systemd.services.sshd.serviceConfig = {
    ##############
    # Networking #
    ##############
    IPAccounting = true;

  };
  # template
  #systemd.services."".serviceConfig  =  {
  #};
}
