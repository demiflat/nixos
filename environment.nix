{ config, lib, modulesPath, ... }:
{

  environment.etc = {
    "xdg/gtk-2.0/gtkrc".text = "gtk-error-bell=0";
    "xdg/gtk-3.0/settings.ini".text = ''
      [Settings]
      gtk-error-bell=false
      gtk-application-prefer-dark-theme=1
    '';
    "xdg/gtk-4.0/settings.ini".text = ''
      [Settings]
      gtk-error-bell=false
      gtk-application-prefer-dark-theme=1
    '';
  };

  # env
  # Print the URL instead on servers
  environment.sessionVariables = { 
#  environment.variables = { 
     BROWSER = "echo";
     MOZ_ENABLE_WAYLAND = "1";
     MOZ_DBUS_REMOTE = "1";
     HSA_OVERRIDE_GFX_VERSION = "10.3.0";
     DEVICE = "cuda";
  };

}
