{ pkgs, ... }: {
  imports = [
    ../../modules/home-manager/common
    ../../modules/home-manager/keymap/us
  ];

  home = rec {
    username = "maesh";
    homeDirectory = "/home/${username}";
    stateVersion = "24.11";
    packages = with pkgs; [
      bottom
      eza
      ripgrep
    ];
  };

  programs.home-manager.enable = true;
}
