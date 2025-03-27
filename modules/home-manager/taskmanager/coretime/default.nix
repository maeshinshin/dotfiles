{ pkgs, ... }: {
  home.packages = [
    pkgs.CuboCore.coretime
  ];
}
