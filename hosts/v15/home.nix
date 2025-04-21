{ pkgs, ... }: {
  imports = [ ../../modules/home-manager/common ];

  home = rec {
    username = "maesh";
    homeDirectory = "/home/${username}";
    stateVersion = "24.11";
    sessionVariables = { EDITOR = "nvim"; };
  };

  programs.home-manager.enable = true;
}
