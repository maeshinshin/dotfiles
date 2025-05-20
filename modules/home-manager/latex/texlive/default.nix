{ pkgs, ... }:
let

  texlive-custom = pkgs.texlive.combine {
    inherit (pkgs.texlive)
      scheme-small
      collection-langjapanese
      collection-latexextra
      collection-latexrecommended
      algorithm2e
      geometry
      jsclasses;
  };
in
{
  home.packages = with pkgs;[
    texlive-custom
  ];
}
