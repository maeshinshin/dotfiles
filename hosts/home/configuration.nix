{ ... }: {
  nixpkgs.config.allowUnfree = true;

  networking = {
    useDHCP = false;
    interfaces = {
      enp3s0 = {
        ipv4 = {
          addresses = [
            {
              address = "192.168.2.1";
              prefixLength = 20;
            }
          ];
        };
        wakeOnLan = {
          enable = true;
        };
      };
    };
    nameservers = [
      "192.168.1.1"
    ];
    defaultGateway = {
      address = "192.168.1.1";
      interface = "enp3s0";
    };
  };

  system.stateVersion = "24.11"; # Did you read the comment?
}
