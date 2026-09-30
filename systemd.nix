{ lib, ... }:
{
  systemd.user.services.waybar.wantedBy = lib.mkForce [ ];

  systemd.services.cups = {
    overrideStrategy = "asDropin";
    after = [ "multi-user.target" ];
    requires = [ "multi-user.target" ];
    wants = [ "multi-user.target" ];
    serviceConfig.Restart = "always";
    serviceConfig.RestartSec = "1s";
    serviceConfig.RestartSteps = "5";
  };
}
