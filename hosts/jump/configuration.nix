{ ... }: {
  nixpkgs.config.allowUnfree = true;

  networking = {
    hostName = "jump";
    interfaces = {
      enp1s0 = {
        wakeOnLan = {
          enable = true;
        };
      };
    };
    nameservers = [ "192.168.1.1" ];
    networkmanager = {
      dns = "none";
      ensureProfiles = {
        profiles = {
          enp1s0 = {
            connection = {
              id = "enp1s0";
              type = "ethernet";
              interface-name = "enp1s0";
            };
            ipv4 = {
              method = "manual";
              addresses = "192.168.3.101/20";
              gateway = "192.168.1.1";
              dns = "192.168.1.1";
            };
            ipv6.method = "ignore";
          };
        };
      };
    };
  };

  system.stateVersion = "24.11"; # Did you read the comment?
}
