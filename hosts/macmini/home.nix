{ pkgs, ... }: {
  imports = [
    ../../modules/home-manager/macmini
  ];

  home = rec {
    username = "maesh";
    stateVersion = "24.11";
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  programs.home-manager.enable = true;
}
