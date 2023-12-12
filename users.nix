
{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users = {

    dak = {
      isNormalUser = true;
      description = "dak";
      extraGroups = [
        "audio"
        "dialout"
        "podman"
        "video"
        "wireshark"
        "libvirtd"
        "networkmanager"
        "wheel"
        "scanner"
        "lp"
        "tss"
        # "jupyter"
      ];
      # mkpasswd
      initialHashedPassword = "$y$j9T$clx0E6zSB7Hy.dfMmVoWR/$ccFvlRUaWJj5.1tpqxeyaIJEiNBSSUfoidWryKksJPA";
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOBGRwrrwH/LDLJ+ye1Zm1Cn5levCMr37g8csHK4ZC85 dak@yoshi"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC5092DTU9UuZeDGo97HYPol8X7lYBkBaroWMFPM3T5G dak@pippin"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC9+9SRa9IDhgMkqVFwQIGPFUhyreRqE8Sq8Q8PX+MA6 dak@gimli"
      ];
    };

    # jupyter = {
    #   isNormalUser = true;
    #   group = "jupyter";
    #   initialHashedPassword = "$y$j9T$clx0E6zSB7Hy.dfMmVoWR/$ccFvlRUaWJj5.1tpqxeyaIJEiNBSSUfoidWryKksJPA";
    # };

  };

  # users.groups = {
  #   juypter = {};
  # };

}
