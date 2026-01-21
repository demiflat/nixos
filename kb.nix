{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Enable the uinput module
  boot.kernelModules = [ "uinput" ];

  # Enable uinput
  hardware.uinput.enable = true;

  # Set up udev rules for uinput
  services.udev.extraRules = ''
    KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
  '';

  # Ensure the uinput group exists
  users.groups.uinput = { };

  # Add the Kanata service user to necessary groups
  systemd.services.kanata-internalKeyboard.serviceConfig = {
    SupplementaryGroups = [
      "input"
      "uinput"
    ];
  };

  services.kanata = {
    enable = true;
    keyboards = {
      internalKeyboard = {
        devices = [
          # Replace the paths below with the appropriate device paths for your setup.
          # Use `ls /dev/input/by-path/` to find your keyboard devices.
          "/dev/input/by-id/usb-nuphy_NuPhy_Field75_HE_2023-11-15-event-kbd"
          "/dev/input/by-id/usb-CATEX_TECH._87EC-S_CA2018080005-event-kbd"
        ];
        extraDefCfg = "process-unmapped-keys yes
                       log-layer-changes yes";
        config = ''
          (defsrc
           caps
           h j k l
          )
          (defvar
           tap-time 200
           hold-time 200
          )
          (defalias
           caps (layer-while-held $vim)
          )
          (deflayer default
           @caps
           h j k l
          )
          (deflayer $vim
           _
           left down up right
          )
        '';
      };
    };
  };
}
