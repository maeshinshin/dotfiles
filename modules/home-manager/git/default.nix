{
  programs = {
    git = {
      enable = true;
      userName = "maesh";
      userEmail = "106868314+maeshinshin@users.noreply.github.com";
      signing = {
        key = "902E2DB2944937CF79474A78C15D410BFF4995F7";
        signByDefault = true;
      };
      delta = {
        enable = true;
      };
      extraConfig = {
        core = {
          editor = "nvim";
        };
      };
    };
  };
}
