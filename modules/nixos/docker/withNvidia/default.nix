{
  virtualisation = {
    docker = {
      autoPrune = {
        enable = true;
        dates = "daily";
      };
      enable = true;
    };
  };
  hardware = {
    nvidia-container-toolkit = {
      enable = true;
    };
  };
}
