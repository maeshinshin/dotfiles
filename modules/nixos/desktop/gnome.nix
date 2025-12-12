{ pkgs, ... }: {
  services = {
    displayManager =
      {
        defaultSession = "gnome";
      };
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
        gdm = {
          enable = true;
          wayland = true;
        };
      };
    };
    gnome = {
      core-apps = {
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
