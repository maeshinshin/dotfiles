{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    withNodeJs = true;
    plugins = with pkgs.vimPlugins; [
      astrocore
      astrolsp
      astrotheme
      astroui
      copilot-vim
      mason-null-ls-nvim
      mason-nvim-dap-nvim
      lazy-nvim
    ];
    extraPackages = with pkgs; [
      python314
      cargo
      gcc
    ];
  };
}
