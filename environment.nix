{ config, lib, modulesPath, ... }:
{

  # Print the URL instead on servers
  environment.variables.BROWSER = "echo";
    
  # firefox
  environment.sessionVariables = {
     MOZ_ENABLE_WAYLAND = "1";
     MOZ_DBUS_REMOTE = "1";
     HSA_OVERRIDE_GFX_VERSION = 10.3.0;
     DEVICE = cuda;
 #    XDG_CURRENT_DESKTOP = "sway"; 
  };
}
