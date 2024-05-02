{ config, lib, modulesPath, nixpkgs, pkgs, ... }:
{
  qt = {
    enable = true;

    #platformTheme = "qt5ct";
    platformTheme = "gnome";
    #platformTheme = "gtk2";

    #style = "kvantum";
    style = "adwaita-dark";
  };

#  nixpkgs.config.qt5 = {
#    enable = true;
#    platformTheme = "qt5ct"; 
#      style = {
#        package = pkgs.utterly-nord-plasma;
#        name = "Utterly Nord Plasma";
#      };
#  };

}
