{
  imports = [
    ../browser/firefox
    ../communication
    ../editor/neovim
    ../fonts
    ../git
    ../home-manager
    ../programinglang/go
    ../rdp
    ../shell/bash
    ../utilities
    ../xdg
    ./openssh.nix
  ];
  home.file = {
    ".config/starship.toml" = {
      source = ./starship.toml;
    };
  };
}
