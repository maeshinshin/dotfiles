{ ... }: {
  imports = [
    ../../modules/home-manager/cli
  ];

  home = rec {
    username = "maesh";
    homeDirectory = "/home/${username}";
    stateVersion = "24.11";
    sessionVariables = {
      EDITOR = "nvim";
      TERM = "xterm";
    };
  };

  programs.home-manager.enable = true;
}
