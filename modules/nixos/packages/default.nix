{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [
      gh
      git
      gnumake
    ];
    gnome.excludePackages = with pkgs; [
      gnome-tour
    ];
  };
}
