{
  programs = {
    go = {
      enable = true;
      packages = { };
    };
    bash = {
      bashrcExtra = ''
        export PATH=$(go env GOPATH)/bin:$PATH
        if command -v aqua &> /dev/null; then
          export PATH=$(aqua root-dir)/bin:$PATH
        fi
      '';
    };
  };

}
