{ pkgs, ... }: {
  services = {
    displayManager =
      {
        defaultSession = "gnome";
        gdm = {
          enable = true;
        };
      };
    desktopManager = {
      gnome = {
        enable = true;
      };
    };
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
      excludePackages = with pkgs; [ xterm ];
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
