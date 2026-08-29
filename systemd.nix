{ lib, ... }:
{
  systemd.user.services.waybar.wantedBy = lib.mkForce [ ];
  systemd.services.ensure-printers.requires = [ "network-online.target" ];
  systemd.services.ensure-printers.after = [ "network-online.target" ];
  systemd.services.ensure-printers.wants = [ "network-online.target" ];
}
