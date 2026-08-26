{
  pkgs,
  config,
  lib,
  modulesPath,
  ...
}:
{
  environment.etc = {
    "xdg/gtk-2.0/gtkrc".text = ''
      gtk-application-prefer-dark-theme = 1
      gtk-error-bell = false
      gtk-theme-name = Catppuccin-GTK
      gtk-enable-event-sounds=0
      gtk-enable-input-feedback-sounds=0
      gtk-xft-antialias=1
      gtk-xft-hinting=1
      gtk-xft-hintstyle="hintfull"
      gtk-xft-rgba="rgb"
      gtk-icon-theme-name="Adwaita"
      gtk-font-name="NotoSans Nerd Font Propo"
      gtk-cursor-theme-name=dmz-black
      gtk-cursor-theme-size=24
      gtk-toolbar-style=GTK_TOOLBAR_ICONS
      gtk-toolbar-icon-size=GTK_ICON_SIZE_SMALL_TOOLBAR
      gtk-button-images=0
      gtk-menu-images=0
    '';
    "xdg/gtk-3.0/settings.ini".text = ''
      [Settings]
      gtk-error-bell = false
      gtk-application-prefer-dark-theme=1
      gtk-font-name="NotoSans Nerd Font Propo"
      gtk-theme-name = Catppuccin-GTK
      gtk-cursor-theme-name=dmz-black
      gtk-cursor-theme-size=24
    '';
    "xdg/gtk-4.0/settings.ini".text = ''
      [Settings]
      gtk-error-bell = false
      gtk-application-prefer-dark-theme = 1
      gtk-font-name="NotoSans Nerd Font Propo"
      gtk-theme-name = Catppuccin-GTK
      gtk-cursor-theme-name=dmz-black
      gtk-cursor-theme-size=24
    '';
  };

  # env
  #  environment.variables = {
  environment.sessionVariables = {
    EDITOR = "nvim";
    # Print the URL instead on servers
    #BROWSER = "echo";
    HYPRCURSOR_THEME = "dmz-black";
    HYPRCURSOR_SIZE = "24";
    #XCURSOR_THEME = "dmz-black";
    #XCURSOR_SIZE = "24";

    #HSA_OVERRIDE_GFX_VERSION = "10.3.0";

    ### gpu info: https://github.com/ROCm/ROCm/issues/2774
    #HSA_OVERRIDE_GFX_VERSION = "9.0.0";
    #HSA_ENABLE_SDMA = "0";

    #DEVICE = "cuda";
    #PYTORCH_ROCM_ARCH = "gfx90c";
    #PYTORCH_ROCM_ARCH = "gfx900";
    #PYTORCH_ROCM_ARCH = "gfx1030";
    #USE_ROCM = "1";

    #GTK_THEME = "Mojave-Dark";
    #XDG_SESSION_TYPE = "wayland";
    #XDG_SESSION_DESKTOP = "Hyprland";

    #GDK_BACKEND = "wayland";
    #QT_QPA_PLATFORM = "wayland";
    #QT_QPA_PLATFORMTHEME = "qt5ct";
    #QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    #QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";

    #SDL_VIDEODRIVER = "wayland";
    #_JAVA_AWT_WM_NONREPARENTING = "1";
    # nvidia:
    #WLR_NO_HARDWARE_CURSORS = "1";
    #WLR_DRM_NO_ATOMIC = "1";

    #MOZ_DISABLE_RDD_SANDBOX = "1";
    #MOZ_ENABLE_WAYLAND = "1";
    #MOZ_DBUS_REMOTE = "1";

    #OZONE_PLATFORM = "wayland";
    #NIXOS_OZONE_WL = "1";

    #FREETYPE_PROPERTIES = "cff:no-stem-darkening=0 autofitter:no-stem-darkening=0";
    #QT_IM_MODULES = "wayland;fcitx;ibus";
  };

  environment.systemPackages = [
    pkgs.cosmic-wallpapers
    pkgs.fedora-backgrounds.f32
    pkgs.fedora-backgrounds.f33
    pkgs.fedora-backgrounds.f34
    pkgs.fedora-backgrounds.f35
    pkgs.fedora-backgrounds.f36
    pkgs.fedora-backgrounds.f37
    pkgs.fedora-backgrounds.f38
    pkgs.kdePackages.plasma-workspace-wallpapers
    pkgs.lomiri.lomiri-wallpapers
    pkgs.neowall
    pkgs.nixos-artwork.wallpapers.binary-black
    pkgs.nixos-artwork.wallpapers.binary-blue
    pkgs.nixos-artwork.wallpapers.binary-red
    pkgs.nixos-artwork.wallpapers.binary-white
    pkgs.nixos-artwork.wallpapers.catppuccin-frappe
    pkgs.nixos-artwork.wallpapers.catppuccin-latte
    pkgs.nixos-artwork.wallpapers.catppuccin-macchiato
    pkgs.nixos-artwork.wallpapers.catppuccin-mocha
    pkgs.nixos-artwork.wallpapers.dracula
    pkgs.nixos-artwork.wallpapers.gear
    pkgs.nixos-artwork.wallpapers.gnome-dark
    pkgs.nixos-artwork.wallpapers.gradient-grey
    pkgs.nixos-artwork.wallpapers.moonscape
    pkgs.nixos-artwork.wallpapers.mosaic-blue
    pkgs.nixos-artwork.wallpapers.nineish
    pkgs.nixos-artwork.wallpapers.nineish-catppuccin-frappe
    pkgs.nixos-artwork.wallpapers.nineish-catppuccin-frappe-alt
    pkgs.nixos-artwork.wallpapers.nineish-catppuccin-latte
    pkgs.nixos-artwork.wallpapers.nineish-catppuccin-latte-alt
    pkgs.nixos-artwork.wallpapers.nineish-catppuccin-macchiato
    pkgs.nixos-artwork.wallpapers.nineish-catppuccin-macchiato-alt
    pkgs.nixos-artwork.wallpapers.nineish-catppuccin-mocha
    pkgs.nixos-artwork.wallpapers.nineish-catppuccin-mocha-alt
    pkgs.nixos-artwork.wallpapers.nineish-dark-gray
    pkgs.nixos-artwork.wallpapers.nineish-solarized-dark
    pkgs.nixos-artwork.wallpapers.nineish-solarized-light
    pkgs.nixos-artwork.wallpapers.recursive
    pkgs.nixos-artwork.wallpapers.simple-blue
    pkgs.nixos-artwork.wallpapers.simple-dark-gray
    pkgs.nixos-artwork.wallpapers.simple-dark-gray-bootloader
    pkgs.nixos-artwork.wallpapers.simple-dark-gray-bottom
    pkgs.nixos-artwork.wallpapers.simple-light-gray
    pkgs.nixos-artwork.wallpapers.simple-red
    pkgs.nixos-artwork.wallpapers.stripes
    pkgs.nixos-artwork.wallpapers.stripes-logo
    pkgs.nixos-artwork.wallpapers.waterfall
    pkgs.nixos-artwork.wallpapers.watersplash
    pkgs.pantheon.elementary-wallpapers
    pkgs.pop-hp-wallpapers
    pkgs.pop-wallpapers
    pkgs.system76-wallpapers
    pkgs.texlivePackages.wallpaper
  ];
  environment.pathsToLink = [
    "/share/backgrounds/nixos"
    "/share/wallpapers"
    "/share/plasma/wallpapers"
  ];
}
