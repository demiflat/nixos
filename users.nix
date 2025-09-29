{ config, pkgs, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users = {
    dak = {
      isNormalUser = true;
      description = "dak";
      extraGroups = [
        "audio"
        "sound"
        "dialout"
        "input"
        # "jupyter"
        "libvirtd"
        "lp"
        "networkmanager"
        "podman"
        "render"
        "scanner"
        "tss"
        "video"
        "wheel"
        "wireshark"
      ];
      # mkpasswd
      initialHashedPassword = "$y$j9T$clx0E6zSB7Hy.dfMmVoWR/$ccFvlRUaWJj5.1tpqxeyaIJEiNBSSUfoidWryKksJPA";
      openssh.authorizedKeys.keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOBGRwrrwH/LDLJ+ye1Zm1Cn5levCMr37g8csHK4ZC85 dak@yoshi"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC5092DTU9UuZeDGo97HYPol8X7lYBkBaroWMFPM3T5G dak@pippin"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC9+9SRa9IDhgMkqVFwQIGPFUhyreRqE8Sq8Q8PX+MA6 dak@gimli"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIACd8V9bOv7OmUJS6Jjt+vx2UuHDpRwUXtV8dNR5fyzm dak@toad"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKL+SZdgvj3FLThAsCG0EMH7b/JmauhRNTDtnmGoSNlo dak@bomba"
	"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIN2svKmWGpomNS8HiAHXy+8JzgRnFsXzPg1oAPjXMLkt dak@gandalf"

      ];
    };

    #    jupyter = {
    #       isNormalUser = true;
    ##      isNormalUser = true;
    #      description = "jupyter";
    #      extraGroups = [
    #       "jupyter"
    #      ];
    #      initialHashedPassword = "$y$j9T$clx0E6zSB7Hy.dfMmVoWR/$ccFvlRUaWJj5.1tpqxeyaIJEiNBSSUfoidWryKksJPA";
    #    };
  };

  #  users.users.jupyter.group = "jupyter";
  #  users.users.jupyter.initialHashedPassword = "$y$j9T$clx0E6zSB7Hy.dfMmVoWR/$ccFvlRUaWJj5.1tpqxeyaIJEiNBSSUfoidWryKksJPA";
  #  users.groups.jupyter = {};
}
