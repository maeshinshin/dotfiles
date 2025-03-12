{ ... }: {
  nixpkgs.config.allowUnfree = true;

  networking = {
    useDHCP = false;
    interfaces = {
      enp3s0 = {
        ipv4 = {
          addresses = [
            {
              address = "192.168.1.9";
              prefixLength = 20;
            }
          ];
          routes = [
            {
              address = "0.0.0.0";
              prefixLength = 0;
              via = "192.168.1.1";
            }
          ];
        };
        wakeOnLan = {
          enable = true;
        };
      };
    };
  };

  system.stateVersion = "24.11"; # Did you read the comment?
}
