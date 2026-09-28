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
      gtk-theme-name = Mojave-Dark 
      gtk-enable-event-sounds=0
      gtk-enable-input-feedback-sounds=0
      gtk-xft-antialias=1
      gtk-xft-hinting=1
      gtk-xft-hintstyle="hintfull"
      gtk-xft-rgba="rgb"
      gtk-icon-theme-name="Nordzy-catppuccin-latte-peach"
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
      gtk-theme-name = Mojave-Dark 
      gtk-cursor-theme-name=dmz-black
      gtk-cursor-theme-size=24
    '';
    "xdg/gtk-4.0/settings.ini".text = ''
      [Settings]
      gtk-error-bell = false
      gtk-application-prefer-dark-theme = 1
      gtk-font-name="NotoSans Nerd Font Propo"
      gtk-theme-name = Mojave-Dark 
      gtk-cursor-theme-name=dmz-black
      gtk-cursor-theme-size=24
    '';
  };

  environment.sessionVariables = {
    EDITOR = "nvim";
    HYPRCURSOR_THEME = "dmz-black";
    HYPRCURSOR_SIZE = "24";
  };

  environment.systemPackages = with pkgs; [
    cosmic-wallpapers
    fedora-backgrounds.f32
    fedora-backgrounds.f33
    fedora-backgrounds.f34
    fedora-backgrounds.f35
    fedora-backgrounds.f36
    fedora-backgrounds.f37
    fedora-backgrounds.f38
    kdePackages.plasma-workspace-wallpapers
    lomiri.lomiri-wallpapers
    neowall
    nixos-artwork.wallpapers.binary-black
    nixos-artwork.wallpapers.binary-blue
    nixos-artwork.wallpapers.binary-red
    nixos-artwork.wallpapers.binary-white
    nixos-artwork.wallpapers.catppuccin-frappe
    nixos-artwork.wallpapers.catppuccin-latte
    nixos-artwork.wallpapers.catppuccin-macchiato
    nixos-artwork.wallpapers.catppuccin-mocha
    nixos-artwork.wallpapers.dracula
    nixos-artwork.wallpapers.gear
    nixos-artwork.wallpapers.gnome-dark
    nixos-artwork.wallpapers.gradient-grey
    nixos-artwork.wallpapers.moonscape
    nixos-artwork.wallpapers.mosaic-blue
    nixos-artwork.wallpapers.nineish
    nixos-artwork.wallpapers.nineish-catppuccin-frappe
    nixos-artwork.wallpapers.nineish-catppuccin-frappe-alt
    nixos-artwork.wallpapers.nineish-catppuccin-latte
    nixos-artwork.wallpapers.nineish-catppuccin-latte-alt
    nixos-artwork.wallpapers.nineish-catppuccin-macchiato
    nixos-artwork.wallpapers.nineish-catppuccin-macchiato-alt
    nixos-artwork.wallpapers.nineish-catppuccin-mocha
    nixos-artwork.wallpapers.nineish-catppuccin-mocha-alt
    nixos-artwork.wallpapers.nineish-dark-gray
    nixos-artwork.wallpapers.nineish-solarized-dark
    nixos-artwork.wallpapers.nineish-solarized-light
    nixos-artwork.wallpapers.recursive
    nixos-artwork.wallpapers.simple-blue
    nixos-artwork.wallpapers.simple-dark-gray
    nixos-artwork.wallpapers.simple-dark-gray-bootloader
    nixos-artwork.wallpapers.simple-dark-gray-bottom
    nixos-artwork.wallpapers.simple-light-gray
    nixos-artwork.wallpapers.simple-red
    nixos-artwork.wallpapers.stripes
    nixos-artwork.wallpapers.stripes-logo
    nixos-artwork.wallpapers.waterfall
    nixos-artwork.wallpapers.watersplash
    pantheon.elementary-wallpapers
    pop-hp-wallpapers
    pop-wallpapers
    system76-wallpapers
    texlivePackages.wallpaper
  ];
  environment.pathsToLink = [
    "/share/backgrounds/nixos"
    "/share/wallpapers"
    "/share/plasma/wallpapers"
  ];
}
