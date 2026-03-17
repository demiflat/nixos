{ lib, ... }:
{
  systemd.user.services.waybar.wantedBy = lib.mkForce [ ];
}
