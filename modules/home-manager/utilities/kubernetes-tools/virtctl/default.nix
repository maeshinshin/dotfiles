{ pkgs, ... }: {
  home.packages = [
    pkgs.kubevirt
  ];
  programs.bash = {
    bashrcExtra = ''
      # virtctl completion
      source <(virtctl completion bash)

    '';
  };
}
