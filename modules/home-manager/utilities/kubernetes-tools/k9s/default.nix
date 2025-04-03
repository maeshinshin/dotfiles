{ pkgs, ... }: {
  home = {
    packages = [
      pkgs.k9s
    ];
  };
  programs.bash = {
    bashrcExtra = ''
      # k9s completion
      source <(k9s completion bash)

    '';
  };
}
