{ pkgs, ... }: {
  programs.helix = {
    enable = true;
    package = pkgs.evil-helix;
    extraPackages = with pkgs; [
      marksman
      gopls
      gotools
      goimports-reviser
    ];
    languages = {
      language = [
        {
          name = "go";
          auto-format = true;
          formatter = { command = "goimports-reviser"; };
          roots = [ "go.mod" "go.work" ];
          comment-token = "//";
          language-servers = [ "gopls" ];
        }
        {
          name = "latex";
          auto-format = true;
          language-servers = [ "texlab" ];
        }
      ];
      language-server = {
        gopls = {
          command = "gopls";
          args = [ "serve" ];
          config = {
            "ui.diagnostic.staticcheck" = true;
            "formatting.gofumpt" = true;
          };
        };
        texlab = {
          command = "texlab";
          config = {
            texlab = {
              chktex = {
                onEdit = true;
                onOpenAndSave = true;
              };
              build = {
                onSave = true;
                forwardSearchAfter = true;
                args = [
                  "-X"
                  "compile"
                  "--synctex"
                  "--keep-logs"
                  "--keep-intermediates"
                  "--outdir=build"
                  "%f"
                ];
              };
              forwardSearch = {
                executable = "zathura";
                args = [
                  "--synctex-forward"
                  "%l:%c:%f"
                  "%p"
                ];
              };
            };
          };
        };
      };
    };
  };
}
