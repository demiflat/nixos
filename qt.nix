{
  config,
  lib,
  modulesPath,
  nixpkgs,
  pkgs,
  ...
}:
{
  qt.enable = true;

  # Make Qt apps use the same (dark) theme as GTK apps.
  #
  # nixpkgs builds Qt5 and Qt6 with the built-in `gtk3` platform theme
  # plugin, which reads the same org.gnome.desktop.interface gsettings as
  # GTK apps (see dconf profile in programs.nix: gtk-theme = "Mojave-Dark",
  # color-scheme = "prefer-dark") and applies that theme's colors, dark
  # mode, font and icons to Qt apps. The `qt.platformTheme` module option
  # only offers gnome/kde/lxqt/qt5ct, so select the built-in plugin via
  # the environment variable instead.
  environment.sessionVariables = {
    QT_QPA_PLATFORMTHEME = "gtk3";
  };
}
