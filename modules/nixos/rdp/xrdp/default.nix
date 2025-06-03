{ pkgs, ... }: {
  services.xrdp = {
    audio.enable = true;
    enable = true;
    defaultWindowManager = "${pkgs.gnome-session}/bin/gnome-session";
    port = 3389;
    openFirewall = true;
  };

  networking.firewall = {
    enable = true;
    allowedUDPPorts = [ 3389 ];
    allowedTCPPorts = [ 3389 ];
  };
}
