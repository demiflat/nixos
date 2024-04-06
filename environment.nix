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
#  environment.variables = { 
  environment.sessionVariables = { 
     
    # Print the URL instead on servers
    #BROWSER = "echo";
    HSA_ENABLE_SDMA="0";
    HSA_OVERRIDE_GFX_VERSION = "10.3.0";
    #HSA_OVERRIDE_GFX_VERSION = "9.0.0";
    #DEVICE = "cuda";
    PYTORCH_ROCM_ARCH = "gfx90c";
    #PYTORCH_ROCM_ARCH = "gfx900";
    #PYTORCH_ROCM_ARCH = "gfx1030";
    USE_ROCM = "1";

    GTK_THEME = "Mojave-Dark";
    XDG_SESSION_TYPE = "wayland";
    XDG_SESSION_DESKTOP = "Hyprland";

    GDK_BACKEND = "wayland";
    QT_QPA_PLATFORM = "wayland";
    QT_QPA_PLATFORMTHEME = "qt5ct";
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";

    SDL_VIDEODRIVER = "wayland";
    _JAVA_AWT_WM_NONREPARENTING = "1";
    WLR_NO_HARDWARE_CURSORS = "1";
    WLR_DRM_NO_ATOMIC = "1";

    MOZ_DISABLE_RDD_SANDBOX = "1";
    MOZ_ENABLE_WAYLAND = "1";
    MOZ_DBUS_REMOTE = "1";

    OZONE_PLATFORM = "wayland";
    NIXOS_OZONE_WL = "1";
  };

}
