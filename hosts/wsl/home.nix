{ pkgs, ... }: {
  imports = [
    ../../modules/home-manager/wsl
  ];

  home = rec {
    username = "maesh";
    homeDirectory = "/home/${username}";
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
