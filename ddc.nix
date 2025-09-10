{ config, lib, ... }:
{
  # https://moverest.xyz/blog/control-display-with-ddc-ci/
  boot.kernelModules = [ "i2c-dev" ];
  services.udev.extraRules = ''
    # RGB controllers
    KERNEL=="i2c-[0-99]*", TAG+="uaccess"
    KERNEL=="hidraw*", SUBSYSTEM=="hidraw", TAG+="uaccess"
  '';
}
