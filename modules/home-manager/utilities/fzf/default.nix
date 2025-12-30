{ ... }: {
  programs = {
    fzf = {
      enable = true;
      changeDirWidgetCommand = "fd --type d --hidden --follow --exclude .git";
      changeDirWidgetOptions = [ "--preview 'tree -C {} | head -200'" ];

    };
  };
}
