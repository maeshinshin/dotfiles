{
  programs = {
    go = {
      enable = true;
      packages = { };
    };
    bash = {
      bashrcExtra = ''
        export PATH=$(go env GOPATH)/bin:$PATH
      '';
    };
  };

}
