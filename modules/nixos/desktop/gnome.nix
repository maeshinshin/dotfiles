{ pkgs, ... }: {
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
      };
      displayManager = {
        gdm = {
          enable = true;
          wayland = true;
          autoSuspend = false;
        };
      };
      desktopManager = {
        gnome = {
          enable = true;
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
      gnome-remote-desktop = {
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
