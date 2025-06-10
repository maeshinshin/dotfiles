{ pkgs, ... }: {
  home = {
    packages = [
      pkgs.kubernetes-helmPlugins.helm-diff
      pkgs.helmfile
    ];
  };
}
