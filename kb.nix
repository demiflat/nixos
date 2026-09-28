{
  config,
  lib,
  pkgs,
  ...
}:
{
  # The uinput kernel module and uinput group come from hardware.uinput.
  hardware.uinput.enable = true;

  # Set up udev rules for uinput
  services.udev.extraRules = ''
    KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
  '';

  users.groups.netdev = { };
}
