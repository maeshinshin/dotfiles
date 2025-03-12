{
  services.xrdp = {
    audio.enable = true;
    enable = true;
    port = 3389;
    openFirewall = true;
  };

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [3389];
  };
}
