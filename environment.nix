{ config, lib, modulesPath, ... }:
{

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
