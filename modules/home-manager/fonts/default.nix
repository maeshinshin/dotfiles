{ pkgs, ... }: {
  home.packages = with pkgs; [
    noto-fonts-cjk-serif
    noto-fonts-cjk-sans
    hackgen-nf-font
    noto-fonts-emoji
  ];
  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = [ "Noto serif CJK JP" "Noto Color Emoji" ];
        sansSerif = [ "Noto Sans CJK JP" "Noto Color Emoji" ];
        monospace = [ "" "Noto Color Emoji" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}
