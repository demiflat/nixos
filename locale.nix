{ config, lib, pkgs, modulesPath, ... }:
{

    # Set your time zone.
  time.timeZone = "America/Los_Angeles";
  
  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # fonts
  fonts = {
    enableDefaultFonts = true;
    fonts = with pkgs; [ 
      nerdfonts
    ];

    fontconfig = {
      defaultFonts = {
#        serif = [ "NotoSerif Nerd Font Propo" ];
#        sansSerif = [ "FiraCode Nerd Font Propo" ];
        monospace = [ "FiraCode Nerd Font Mono" ];
      };
    };
  };  

}