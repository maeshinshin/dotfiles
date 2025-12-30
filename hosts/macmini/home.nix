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
    shell = {
      enableBashIntegration = true;
    };
  };

  programs.home-manager.enable = true;
}
