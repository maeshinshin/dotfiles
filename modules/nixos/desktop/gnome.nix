{ pkgs, ... }: {
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
      excludePackages = with pkgs; [ xterm ];
      desktopManager = {
        gnome = {
          enable = true;
        };
      };
      displayManager = {
        defaultSession = "gnome";
        gdm = {
          enable = true;
          wayland = true;
        };
      };
    };
    gnome = {
      core-utilities = {
        enable = false;
      };
      core-shell = {
        enable = true;
      };
      gnome-keyring = {
        enable = true;
      };
    };
  };

  programs = {
    xwayland = {
      enable = true;
    };
  };
}
