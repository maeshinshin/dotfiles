{
  virtualisation = {
    docker = {
      enable = true;
      enableNvidia = true;
      autoPrune = {
        enable = true;
        dates = "daily";
      };
    };
  };
  hardware = {
    nvidia-container-toolkit = {
      enable = true;
    };
  };
}
