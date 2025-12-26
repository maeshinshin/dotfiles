{ pkgs, ... }: {
  home.packages = with pkgs; [
    noto-fonts-cjk-serif
    noto-fonts-cjk-sans
    hackgen-nf-font
    noto-fonts-color-emoji
  ];
  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = [ "Noto serif CJK JP" "Noto Color Emoji" ];
        sansSerif = [ "Noto Sans CJK JP" "Noto Color Emoji" ];
        monospace = [ "HackGen Console NF" "Noto Color Emoji" ];
        emoji = [ "HackGen Console NF" "Noto Color Emoji" ];
      };
    };
  };
}
