{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [
      gh
      git
    ];
    gnome.excludePackages = with pkgs; [
      gnome-tour
    ];
  };
}
