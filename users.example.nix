{ config, pkgs, ... }:

{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dak = {
    isNormalUser = true;
    description = "me";
    extraGroups = [
      "libvirtd"
      "networkmanager"
      "wheel"
      "scanner"
      "lp"
      "tss"
    ];
    # mkpasswd
    initialHashedPassword = "abc";
    openssh.authorizedKeys.keys = [ "ssh-type abc user@domain" ];
  };

}
