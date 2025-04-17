{
  imports = [
    ../gnupg
    ../nix
    ../timezone
    ./users
    ./direnv.nix
    ./openssh.nix
    ./packages.nix
    ./starship.nix
    ./alacritty.nix
  ];
}
