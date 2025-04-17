{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [
      gh
      git
      gnumake
    ];
  };
}
