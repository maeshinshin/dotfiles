{ pkgs, ... }: {
  imports = [
    ../../modules/home-manager/common
    ../../modules/home-manager/keymap/jp
  ];

  home = rec {
    username = "maesh";
    homeDirectory = "/home/${username}";
    stateVersion = "24.11";
    packages = with pkgs; [
      bottom
    ];
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  programs.home-manager.enable = true;
}
