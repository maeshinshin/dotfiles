{ pkgs, ... }: {
  programs.helix = {
    enable = true;
    package = pkgs.evil-helix;
    extraPackages = with pkgs; [
      marksman
      helix-gpt
      gopls
    ];
    languages = {
      language-server = {
        gopls = {
          command = "gopls";
          args = [ "serve" ];
          config = {
            "ui.diagnostic.staticcheck" = true;
          };
        };
      };
      language = [{
        name = "go";
        auto-format = true;
        formatter = "gofumpt";
        comment-token = "//";
        language-server = [ "gopls" ];
      }];
    };
  };
}
