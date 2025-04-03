{ pkgs, ... }: {
  home = {
    packages = [ pkgs.kubectl ];
    shellAliases = { k = "kubectl"; };
  };
  programs.bash = {
    bashrcExtra = ''
      # kubectl completion
      source <(kubectl completion bash)
      complete -o default -F __start_kubectl k

    '';
  };
}
